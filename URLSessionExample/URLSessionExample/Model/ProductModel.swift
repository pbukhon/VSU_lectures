//
//  ProductModel.swift
//  URLSessionExample
//
//  Created by Pavel Bukhonov on 19.11.2024.
//

import Foundation
struct Product: Decodable {
    var brand: String
    var productName: String
    var price: Double
    var quantity: Int
    var imageUrl: String
    var isLiked: Bool
    var isBestseller: Bool
    
    enum CodingKeys: String, CodingKey {
        case brand
        case productName = "product_name"
        case price
        case items_left
        case image_url
        case is_liked, is_bestseller
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.brand = try container.decode(String.self, forKey: .brand)
        self.productName = try container.decode(String.self, forKey: .productName)
        self.price = try container.decode(Double.self, forKey: .price)
        self.quantity = try container.decode(Int.self, forKey: .items_left)
        self.imageUrl = try container.decode(String.self, forKey: .image_url)
        self.isLiked = try container.decode(Bool.self, forKey: .is_liked)
        self.isBestseller = try container.decode(Bool.self, forKey: .is_bestseller)
    }
}
