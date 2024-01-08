//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

private typealias Module = ___VARIABLE_productName:identifier___Module
private typealias ViewModel = Module.ViewModel

// MARK: - ViewModel
extension Module {
    final class ViewModel: ViewModelProtocol {
        // MARK: - Public Properties

        // MARK: - Private Properties

        // MARK: - Services

        // MARK: - Managers

        // MARK: - Helpers
        private var cancellable: CancelBag = .init()

        // MARK: - Init
        init(
        ) {
        }

        // MARK: - Lifecycle
        func onAppear() {
            cancellable.cancel()
        }

        // MARK: - Tap Actions
    }
}

// MARK: - Private Methods
private extension ViewModel {
}
