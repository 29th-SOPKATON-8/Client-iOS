//
//  KimseaService.swift
//  Client-iOS
//
//  Created by Thisisme Hi on 2021/11/21.
//

import Foundation
import Alamofire

struct CommunityResponseModel: Codable {
    let status: Int
    let message: String
    let data: [CommunityContent]?
}

// MARK: - Datum
struct CommunityContent: Codable {
    let content, name: String
}

struct KimseaService {
    
    static let shared = KimseaService()
    
    func getCommunityList(step: Int,
                          completion: @escaping (NetworkResult<Any>) -> Void) {
       
        
        AF.request("https://asia-northeast3-wesopt29-328c5.cloudfunctions.net/api/post/\(step)",
                   method: .get,
                   encoding: JSONEncoding.default,
                   headers: ["Content-Type": "application/json"])
            .validate(statusCode: 200...500)
            .responseData { res in
                switch res.result {
                case .success(let data):
                    print(res)
                    switch res.response?.statusCode {
                    case 200:
                        guard let jsonData = try? JSONDecoder().decode(CommunityResponseModel.self, from: data) else { return }
                        return completion(.success(jsonData))
                    case 400:
                        guard let jsonData = try? JSONDecoder().decode(CommunityResponseModel.self, from: data) else { return }
                        return completion(.requestErr(jsonData))
                    default: completion(.networkFail)
                    }
                    
                case .failure(let err):
                    print(err)
                }
            }
    }
}
