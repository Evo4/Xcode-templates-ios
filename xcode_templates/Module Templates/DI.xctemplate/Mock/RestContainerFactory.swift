//
//  RestContainerFactory
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Macaroni

class RestContainerFactory {
    let baseURL: String

    init(
        baseURL: String
    ) {
        self.baseURL = baseURL

    }

    // MARK: - Modules
//    private lazy var productListAssembly: ProductListModule.ModuleAssembly = .init()

    // MARK: - Session
//    private lazy var restClient = RestClient(baseURL: baseURL)

    // MARK: - Services
//    private lazy var productService: ProductService = RestProductService(restClient: restClient)

    func build() -> Container {
        let container = Container()

        // MARK: - Modules
//        container.register { [productListAssembly] () -> ProductListModule.ModuleAssemblying in productListAssembly }

        // MARK: - Services
//        container.register { [productService] () -> ProductService in productService }

        return container
    }
}
