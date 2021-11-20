//
//  UserNameService.swift
//  Client-iOS
//
//  Created by Thisisme Hi on 2021/11/21.
//

import Foundation

import Moya

// MARK: - UserNameModel

struct UserNameModel: Codable {
    let status: Int
    let message: String
}

// MARK: - UserNameRequest

struct UserNameRequest: Codable {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
}

// MARK: - RuheeService

enum RuheeService {
    case userName(param: UserNameRequest)
}

extension RuheeService: TargetType {
    var baseURL: URL {
        return URL(string: APIConstants.baseURL)!
    }
    
    var path: String {
        switch self {
        case .userName:
            return "/lover/trash"
        }
    }
    
    var method: Moya.Method {
        switch self {
        default:
            return .post
        }
    }
    
    var sampleData: Data {
        return "@@".data(using: .utf8)!
    }
    
    var task: Task {
        switch self {
        case .userName(let param):
            return .requestJSONEncodable(param)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return ["Content-Type": "application/json"]
        }
    }
}

// MARK: - UserNameManager

class UserManager {
    
    // MARK: - Static Properties
    
    static let shared: UserManager = UserManager()
    
    // MARK: - Network Properties
    
    private let userNameProvider = MoyaProvider<RuheeService>(plugins: [NetworkLoggerPlugin()])
    public var userNameModel: UserNameModel?
    
    // MARK: - POST : Login
    
    func fetchUserName(name: String, completion: @escaping (() -> ())) {
        let param = UserNameRequest.init(name)
        userNameProvider.request(.userName(param: param)) { result in
            switch result {
            case .success(let result):
                do {
                    self.userNameModel = try result.map(UserNameModel.self)
                    completion()
                } catch(let err) {
                    print(err.localizedDescription)
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
}


