require 'fileutils'
require_relative 'stringExtensions'

class Constants 
    private
    PROJECT_PATH = File.dirname(__FILE__)
    TEMPLATE_DIR="xcode_templates/"
    TEMPLATE_TYPE = ".xctemplate"
    XCODE_TEMPLATES_FOLDER = "#{Dir.home}/Library/Developer/Xcode/Templates"
end

# ------------------------------------ Private methods ------------------------------------
private
def printMessage message
    puts ""
    puts message
    puts ""
end

private
def makeDirPathFromName dir_name
    "#{Constants::TEMPLATE_DIR}#{dir_name}"
end

private
def isChildDir dir
    !dir.include?(".") or dir.include?(Constants::TEMPLATE_TYPE)
end

private
def scanTemplatesDir
    Dir
    .entries(Constants::TEMPLATE_DIR)
    .select { |dir|
        isChildDir(dir) and Dir.exists?(makeDirPathFromName(dir))
    }
    .map { |dir|
        makeDirPathFromName("#{dir}/")
    }
end

private
def findTemplates dir_name
    Dir
    .entries(dir_name)
    .select { |dir|
        isChildDir(dir) and Dir.exists?("#{dir_name}#{dir}")
    }
end

private
def findValidDirs dir_name
    findTemplates(dir_name).map { |dir|
        "#{dir_name}#{dir}"
    }
end

private
def validatedDir dir_name
    entries = findValidDirs(dir_name)

    if entries.count == 0
        return false   
    else
        return true
    end
end

# ------------------------------------ Script ------------------------------------

printMessage("Scanning...".green)

dirs = scanTemplatesDir()

if dirs.count > 0
    entries = dirs.select { |dir|
        validatedDir(dir)
    }

    if entries.count > 0
        puts "Found templates:"

        dirs
        .flat_map { |dir|
            findTemplates(dir)
        }
        .each do |template|
            puts "- #{template}"
        end

        if !Dir.exists?(Constants::XCODE_TEMPLATES_FOLDER)
            printMessage("Missing Xcode templates folder \nCreating...".yellow)

            FileUtils.mkdir_p Constants::XCODE_TEMPLATES_FOLDER
        end

        entries.each do |folder|
            FileUtils.cp_r folder, Constants::XCODE_TEMPLATES_FOLDER
        end

        printMessage("Copied to Xcode templates folder".green)
    else
        printMessage("Cannot find templates".red)
    end    
else
    printMessage("Templates folder empty".red)
end