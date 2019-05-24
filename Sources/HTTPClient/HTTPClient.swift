//
//  HTTPClient.swift
//  OnTheMapMeyer
//
//  Created by Meyer, Gustavo on 5/20/19.
//  Copyright © 2019 Gustavo Meyer. All rights reserved.
//

import Foundation

/// The HTTP client result to represent the HTTP Result in enum.
///
/// - success: The sucess HTTP
/// - failure: The failure HTTP
public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

/// A protocol to make HTTP Request
protocol HTTPClient {

    /// Makes a HTTP GET request
    ///
    /// - Parameters:
    ///   - urlResquest: The `URL`
    ///   - completion: The completion handler to retrive the HTTP response
    func makeRequest(from urlResquest: URLRequest, completion: @escaping (HTTPClientResult) -> Void)
}
