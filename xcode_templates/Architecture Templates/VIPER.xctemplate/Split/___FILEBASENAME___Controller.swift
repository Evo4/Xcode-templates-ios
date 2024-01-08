//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

private typealias Module = ___VARIABLE_productName:identifier___Module
private typealias Controller = Module.Controller

extension Module {
    final class Controller: UIViewController {
        // MARK: - Dependencies
        var output: ControllerOutput?
        var viewOutput: (UIView & ViewOutput)?

        // MARK: - Properties

        // MARK: - Init
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        init() { super.init(nibName: nil, bundle: nil) }

        // MARK: - Lifecycle
        override func loadView() {
            super.loadView()

            self.view = viewOutput
        }

        override func viewDidLoad() {
            super.viewDidLoad()

        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)

        }


        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)

        }

        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)

        }
    }
}

private extension Controller { }

extension Controller: Module.ControllerInput { }
