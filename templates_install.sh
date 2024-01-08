#!/bin/bash -

# -------------------- Templates -----------------------
user=$(whoami)
destination=/Users/$user/Library/Developer/Xcode/Templates
# destination=~/Library/Developer/Xcode/DerivedData
cp -R xcode_templates/Module\ Templates $destination
cp -R xcode_templates/Architecture\ Templates $destination