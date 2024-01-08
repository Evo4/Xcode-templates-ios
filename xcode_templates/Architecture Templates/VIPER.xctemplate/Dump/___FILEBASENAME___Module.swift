//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import BaseProtocols

struct ___VARIABLE_productName:identifier___Module {
    typealias ModuleAssemblying = ___VARIABLE_productName:identifier___AssemblyProtocol
    typealias ControllerInput = ___VARIABLE_productName:identifier___ControllerInputProtocol
    typealias ControllerOutput = ___VARIABLE_productName:identifier___ControllerOutputProtocol
    typealias InteractorInput = ___VARIABLE_productName:identifier___InteractorInputProtocol
    typealias InteractorOutput = ___VARIABLE_productName:identifier___InteractorOutputProtocol
    typealias RouterInput = ___VARIABLE_productName:identifier___RouterInputProtocol
}

// MARK: - Assembly
protocol ___VARIABLE_productName:identifier___AssemblyProtocol: BaseAssembly { }

// MARK: - Controller
protocol ___VARIABLE_productName:identifier___ControllerInputProtocol: BaseControllerInput { }

protocol ___VARIABLE_productName:identifier___ControllerOutputProtocol: BaseControllerOutput { }

// MARK: - Interactor
protocol ___VARIABLE_productName:identifier___InteractorInputProtocol { }

protocol ___VARIABLE_productName:identifier___InteractorOutputProtocol: AnyObject, BaseInteractorOutput { }

// MARK: - Router
protocol ___VARIABLE_productName:identifier___RouterInputProtocol { }
