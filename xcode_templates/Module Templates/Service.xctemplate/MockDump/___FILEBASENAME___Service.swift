//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Alamofire

protocol ___VARIABLE_productName:identifier___Service { }

extension RequestRouter {
    enum ___VARIABLE_productName:identifier___ {
        case example
    }
}

extension RequestRouter.___VARIABLE_productName:identifier___: NetworkingRouterProtocol {
    var path: Endpoint {
        switch self {
            case .example:
                return ""
        }
    }

    var method: HTTPMethod {
        switch self {
            case .example:
                return .get
        }
    }

    var parameters: Encodable? {
        switch self {
            case .example:
                return nil
        }
    }

    var addAuth: Bool {
        switch self {
            case .example:
                return false
        }
    }
}
