//
//  exampleService.swift
//  Client-iOS
//
//  Created by 홍진석 on 2021/11/20.
//

import Alamofire
import Foundation

struct exampleService {
    static let shared = exampleService()

    //get예시
//    func fetchUserInfo(completion: @escaping (Any) -> Void) {
//        RequestHandler.shared.requestData(url: APIConstants.userURL, httpmethod: .get, parameter: nil, header: NetworkInfo.headerWithToken, decodeType: GeneralResponse<UserResponse>.self) { response in
//            completion(response)
//        }
//    }
//
    
    //post예시
//    func registerFCMToken(token: fcmTokenRequest) {
//        let parameter = NetworkInfo.shared.makeParameter(model: token)
//        RequestHandler.shared.requestData(url: APIConstants.fcmTokenURL, httpmethod: .post, parameter: parameter, header: NetworkInfo.headerOnlyType, decodeType: GeneralResponse<Data>.self) { _ in }
//    }
}
