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
    var freeDelivery: Bool = false
    //var description: String
    var productRating: Int
}

var breakfood = [
    
    Product(productImage: "img01", productTitle: "Asian Sesame Cucumber Salad", productPrice: "$5.95", productBG: Color.gray ,productRating: 5),
    Product(productImage: "img02", productTitle: "Broccoli and Mushroom Stir-Fry", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 3),
    Product(productImage: "img03", productTitle: "Cobb Salad with the Best Dressing", productPrice: "$7.25", productBG: Color.purple, productRating: 3),
    Product(productImage: "img05", productTitle: "Garlic Herb Roasted Potatoes Carrots and Zucchini", productPrice: "$4.35", productBG: Color.green, freeDelivery: true, productRating: 4),
    Product(productImage: "img06", productTitle: "Grilled Garlic and Herb Chicken and Veggies", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5),
    Product(productImage: "img07", productTitle: "Mango Ginger Rice Bowl", productPrice: "$8.50", productBG: Color.blue, productRating: 5),
    Product(productImage: "img08", productTitle: "Roasted Vegetables with Garlic and Herbs", productPrice: "$5.45", productBG: Color.gray, freeDelivery: true, productRating: 4),
    Product(productImage: "img09", productTitle: "Stir-Fried Sweet Chili Tofu", productPrice: "$8.80", productBG: Color.blue, productRating: 4),
    Product(productImage: "img10", productTitle: "Super vegan bowl with parsley cashew pesto", productPrice: "$8.80", productBG: Color.blue, productRating: 4)

]

var lunch = [
    
//    Product(productImage: "img01", productTitle: "Asian Sesame Cucumber Salad", productPrice: "$5.95", productBG: Color.gray, productRating: 5),
//    Product(productImage: "img02", productTitle: "Broccoli and Mushroom Stir-Fry", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 3),
    Product(productImage: "img03", productTitle: "Cobb Salad with the Best Dressing", productPrice: "$7.25", productBG: Color.purple, productRating: 3),
    Product(productImage: "img05", productTitle: "Garlic Herb Roasted Potatoes Carrots and Zucchini", productPrice: "$4.35", productBG: Color.green, freeDelivery: true, productRating: 4),
    Product(productImage: "img06", productTitle: "Grilled Garlic and Herb Chicken and Veggies", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5),
//    Product(productImage: "img07", productTitle: "Mango Ginger Rice Bowl", productPrice: "$8.50", productBG: Color.blue, productRating: 5),
    Product(productImage: "img08", productTitle: "Roasted Vegetables with Garlic and Herbs", productPrice: "$5.45", productBG: Color.gray, freeDelivery: true, productRating: 4),
    Product(productImage: "img09", productTitle: "Stir-Fried Sweet Chili Tofu", productPrice: "$8.80", productBG: Color.blue, productRating: 4),
    Product(productImage: "img10", productTitle: "Super vegan bowl with parsley cashew pesto", productPrice: "$8.80", productBG: Color.blue, productRating: 4)

]

var dinner = [
    
//    Product(productImage: "img01", productTitle: "Asian Sesame Cucumber Salad", productPrice: "$5.95", productBG: Color.gray, productRating: 5),
    Product(productImage: "img02", productTitle: "Broccoli and Mushroom Stir-Fry", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 3),
//    Product(productImage: "img03", productTitle: "Cobb Salad with the Best Dressing", productPrice: "$7.25", productBG: Color.purple, productRating: 3),
//    Product(productImage: "img05", productTitle: "Garlic Herb Roasted Potatoes Carrots and Zucchini", productPrice: "$4.35", productBG: Color.green, freeDelivery: true, productRating: 4),
    Product(productImage: "img06", productTitle: "Grilled Garlic and Herb Chicken and Veggies", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5),
    Product(productImage: "img07", productTitle: "Mango Ginger Rice Bowl", productPrice: "$8.50", productBG: Color.blue, productRating: 5),
    Product(productImage: "img08", productTitle: "Roasted Vegetables with Garlic and Herbs", productPrice: "$5.45", productBG: Color.gray, freeDelivery: true, productRating: 4),
    Product(productImage: "img09", productTitle: "Stir-Fried Sweet Chili Tofu", productPrice: "$8.80", productBG: Color.blue, productRating: 4),
//    Product(productImage: "img10", productTitle: "Super vegan bowl with parsley cashew pesto", productPrice: "$8.80", productBG: Color.blue, productRating: 4)
    
]
