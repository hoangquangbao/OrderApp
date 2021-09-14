//
//  Product.swift
//  OrderApp
//
//  Created by Quang Bao on 14/09/2021.
//

import SwiftUI

//Product Model and Sample data....
struct Product: Identifiable{
    
    var id = UUID().uuidString
    var productImage: String
    var productTitle: String
    var productPrice: String
    var productBG: Color
    var isLike: Bool = false
    var productRating: Int
}

var products = [
    
    Product(productImage: "1", productTitle: "ABC", productPrice: "$5.0", productBG: Color.gray, productRating: 4),
    Product(productImage: "1", productTitle: "ABC", productPrice: "$5.0", productBG: Color.gray, productRating: 4),
    Product(productImage: "1", productTitle: "ABC", productPrice: "$5.0", productBG: Color.gray, productRating: 4),
    Product(productImage: "1", productTitle: "ABC", productPrice: "$5.0", productBG: Color.gray, productRating: 4)
]
