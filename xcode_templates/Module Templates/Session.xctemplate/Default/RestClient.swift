//
//  RestClient
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Alamofire
import AFNetworkingSession

enum ApiURLsPath: String {
    case baseProdUrl = "Prod"
    case baseStageUrl = "Stage"
}

final class RestClient: NetworkingSession, InterceptorDelegate {
    class var isConnectedToInternet: Bool {
        NetworkReachabilityManager()?.isReachable ?? false
    }

    override init(baseURL: String) {
        super.init(baseURL: baseURL)

        self.interceptorDelegate = self
    }

    func retry(_ request: Request, dueTo error: Error, completion: @escaping (RetryResult) -> Void) {
        completion(.doNotRetry)
    }
}

// MARK: - OAuth Authenticator Delegate
extension TokenManager: OAuthAuthenticatorDelegate { }

// MARK: - Token Manager Networking Router Protocol
extension TokenManager.TokenRouter: NetworkingRouterProtocol {
    var path: Endpoint { "" }
}

// MARK: - Response Models
enum ResponseModels { }

// MARK: - Request Models
enum RequestModels { }
