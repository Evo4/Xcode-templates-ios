//
//  RestContainerFactory
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Macaroni

class MockContainerFactory {
    // MARK: - Modules
//    private lazy var productListAssembly: ProductListModule.ModuleAssembly = .init()

    // MARK: - Services
//    private lazy var productService: ProductService = MockProductService()

    func build() -> Container {
        let container = Container()

        // MARK: - Modules
//        container.register { [productListAssembly] () -> ProductListModule.ModuleAssemblying in productListAssembly }

        // MARK: - Services
//        container.register { [productService] () -> ProductService in productService }

        return container
    }
}
