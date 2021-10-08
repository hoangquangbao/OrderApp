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

var breakfood = [
    
    Product(productImage: "img1", productTitle: "HARISSA", productPrice: "$5.95", productBG: Color.gray, productRating: 5),
    Product(productImage: "img2", productTitle: "ORGANIC DIP", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 3),
    Product(productImage: "img3", productTitle: "EGGPLANT", productPrice: "$7.25", productBG: Color.purple, productRating: 3),
    Product(productImage: "img4", productTitle: "ROASTED GARLIC", productPrice: "$8.00", productBG: Color.blue, productRating: 5),
    Product(productImage: "img6", productTitle: "SPICY HUMMUS", productPrice: "$4.35", productBG: Color.green, productRating: 4),
    Product(productImage: "img7", productTitle: "TRADITIONAL", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5),
    Product(productImage: "img8", productTitle: "TZATZIKI", productPrice: "$8.50", productBG: Color.blue, productRating: 5),
    Product(productImage: "img9", productTitle: "HARISSA DIP", productPrice: "$5.45", productBG: Color.gray, productRating: 4),
    Product(productImage: "img12", productTitle: "ORGANIC TZATZIKI", productPrice: "$8.80", productBG: Color.blue, productRating: 4)

]

var lunch = [
    
    Product(productImage: "img1", productTitle: "HARISSA", productPrice: "$5.95", productBG: Color.gray, productRating: 5),
//    Product(productImage: "img2", productTitle: "ORGANIC DIP", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 5),
//    Product(productImage: "img3", productTitle: "EGGPLANT", productPrice: "$7.25", productBG: Color.purple, productRating: 5),
//    Product(productImage: "img4", productTitle: "ROASTED GARLIC", productPrice: "$8.00", productBG: Color.blue, productRating: 5),
    Product(productImage: "img6", productTitle: "SPICY HUMMUS", productPrice: "$4.35", productBG: Color.green, productRating: 4),
    Product(productImage: "img7", productTitle: "TRADITIONAL", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5),
    Product(productImage: "img8", productTitle: "TZATZIKI", productPrice: "$8.50", productBG: Color.blue, productRating: 5),
    Product(productImage: "img9", productTitle: "HARISSA DIP", productPrice: "$5.45", productBG: Color.gray, productRating: 4),
//    Product(productImage: "img12", productTitle: "ORGANIC TZATZIKI", productPrice: "$8.80", productBG: Color.blue, productRating: 5)

]

var dinner = [
    
    Product(productImage: "img1", productTitle: "HARISSA", productPrice: "$5.95", productBG: Color.gray, productRating: 5),
    Product(productImage: "img2", productTitle: "ORGANIC DIP", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 3),
    Product(productImage: "img3", productTitle: "EGGPLANT", productPrice: "$7.25", productBG: Color.purple, productRating: 3),
    Product(productImage: "img4", productTitle: "ROASTED GARLIC", productPrice: "$8.00", productBG: Color.blue, productRating: 5),
//    Product(productImage: "img6", productTitle: "SPICY HUMMUS", productPrice: "$4.35", productBG: Color.green, productRating: 5),
//    Product(productImage: "img7", productTitle: "TRADITIONAL", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5),
//    Product(productImage: "img8", productTitle: "TZATZIKI", productPrice: "$8.50", productBG: Color.blue, productRating: 5),
//    Product(productImage: "img9", productTitle: "HARISSA DIP", productPrice: "$5.45", productBG: Color.gray, productRating: 5),
//    Product(productImage: "img12", productTitle: "ORGANIC TZATZIKI", productPrice: "$8.80", productBG: Color.blue, productRating: 5)
    
]
