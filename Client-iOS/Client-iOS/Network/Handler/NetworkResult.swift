//
//  NetworkResult.swift
//  Client-iOS
//
//  Created by 홍진석 on 2021/11/20.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}

enum ErrorMessage {
    case conflict
    case wrongRequest
    case notFound
}
