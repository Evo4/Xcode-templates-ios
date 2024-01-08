//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

// MARK: - ___VARIABLE_productName:identifier___Module
struct ___VARIABLE_productName:identifier___Module {
    typealias ViewModelProtocol = ___VARIABLE_productName:identifier___ViewModelProtocol

    func assemble() -> some View {
        let viewModel: ViewModel = .init()

        return MainView(viewModel: viewModel)
    }
}

// MARK: - ___VARIABLE_productName:identifier___ViewModelProtocol
protocol ___VARIABLE_productName:identifier___ViewModelProtocol: ObservableObject {
    func onAppear()
}
