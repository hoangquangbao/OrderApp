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
    
    Product(productImage: "img1", productTitle: "PRD1", productPrice: "$5.95", productBG: Color.gray, productRating: 5),
    Product(productImage: "img2", productTitle: "PRD2", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 5),
    Product(productImage: "img3", productTitle: "PRD3", productPrice: "$7.25", productBG: Color.purple, productRating: 5),
    Product(productImage: "img4", productTitle: "PRD4", productPrice: "$8.00", productBG: Color.blue, productRating: 5),
//    Product(productImage: "img5", productTitle: "PRD1", productPrice: "$5.35", productBG: Color.gray, productRating: 5),
    Product(productImage: "img6", productTitle: "PRD2", productPrice: "$4.35", productBG: Color.green, productRating: 5),
    Product(productImage: "img7", productTitle: "PRD3", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5),
    Product(productImage: "img8", productTitle: "PRD4", productPrice: "$8.50", productBG: Color.blue, productRating: 5),
    Product(productImage: "img9", productTitle: "PRD1", productPrice: "$5.45", productBG: Color.gray, productRating: 5),
//    Product(productImage: "img10", productTitle: "PRD2", productPrice: "$4.36", productBG: Color.green, isLike: true, productRating: 5),
//    Product(productImage: "img11", productTitle: "PRD3", productPrice: "$7.95", productBG: Color.purple, productRating: 5),
    Product(productImage: "img12", productTitle: "PRD4", productPrice: "$8.80", productBG: Color.blue, productRating: 5)

]
