//
//  ProductsManager.swift
//  URLSessionExample
//
//  Created by Pavel Bukhonov on 19.11.2024.
//

import Foundation

class ProductsManager {
    
    func fetchProducts() {
        let url = URL(string: "")
        APIManager.sharedInstance.get(withUrl: <#T##URL#>, completion: <#T##(Result<Decodable, Error>) -> Void#>)
    }
}
