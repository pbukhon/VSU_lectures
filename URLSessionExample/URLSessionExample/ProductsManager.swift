//
//  ProductsManager.swift
//  URLSessionExample
//
//  Created by Pavel Bukhonov on 19.11.2024.
//

import Foundation

class ProductsManager {
    
    func fetchProducts() {
        let url = URL(string: "https://github.com/pbukhon/VSU_lectures/blob/a920f3c5d80111676f8727bc22aaccf26c83df83/products.json?raw=true")!
        APIManager.sharedInstance.get(withUrl: url) { (result: Result<[Product], Error>) -> Void in
            switch result {
            case.success(let products):
                print("products \(products.count)")
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
