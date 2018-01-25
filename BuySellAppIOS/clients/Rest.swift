//
//  Rest.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 19/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

class Rest {
    
    private static let baseUrl: String = ""
    
    private static func createRequest(urlString: String, method: String) -> URLRequest {
        let url = URL(string: urlString)!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = method
        return request
    }
    
    private static func createRequest(urlString: String, method: String, data: Data) -> URLRequest {
        var httpRequest: URLRequest = createRequest(urlString: urlString, method: method)
        httpRequest.httpBody = data
        
        return httpRequest
    }
    
    private static func makeRequest(request: URLRequest, completion: @escaping (Any?) -> Void) {
        DispatchQueue.global().async {
            URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
                guard let data = data else {
                    print("ERROR: Problem fetching data - \(error!)")
                    completion(nil)
                    return
                }
                
                DispatchQueue.main.async {
                    completion((data))
                }
            }).resume()
        }
    }
    
    static func get(url: String, completion: @escaping (Any?) -> Void) {
        let request = createRequest(urlString: url, method: "GET")
        makeRequest(request: request, completion: completion)
    }
    
    static func post(url: String, body: Data, completion: @escaping (Any?) -> Void) {
        let request = createRequest(urlString: url, method: "POST", data: body)
        makeRequest(request: request, completion: completion)
    }
    
    
    
}
