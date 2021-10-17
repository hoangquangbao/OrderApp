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
    var productRating: Int
    var description: String
}

var breakfood = [
    
    Product(productImage: "img01", productTitle: "Asian Sesame Cucumber Salad", productPrice: "$5.95", productBG: Color.gray ,productRating: 5, description: "Have you ever noticed how thirst-quenching it is to eat a cucumber? They’re like edible water bottles. Wait a minute… you guys… EDIBLE WATER BOTTLES. Why haven’t we done this yet?! Saving the environment by eating things?"),
    Product(productImage: "img02", productTitle: "Broccoli and Mushroom Stir-Fry", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 3, description: "If you're a fan of Chinese beef with broccoli, this is the vegetarian version. Button and shiitake mushrooms were stir fried with broccoli florets, and tossed in a sticky sweet-salty sauce. Serve as a main dish for vegetarians or a side dish for omnivores."),
    Product(productImage: "img03", productTitle: "Cobb Salad with the Best Dressing", productPrice: "$7.25", productBG: Color.purple, productRating: 3, description: "Easy Chicken Cobb Salad with the best homemade Cobb Salad Dressing! This protein-packed salad is a meal in itself loaded with crisp lettuce, juicy tomatoes, boiled eggs, creamy avocado and crumbled blue cheese."),
    Product(productImage: "img05", productTitle: "Garlic Herb Roasted Potatoes Carrots and Zucchini", productPrice: "$4.35", productBG: Color.green, freeDelivery: true, productRating: 4, description: "These roasted potatoes and carrots are coated in butter, garlic and herbs, then cooked until golden brown and tender."),
    Product(productImage: "img06", productTitle: "Grilled Garlic and Herb Chicken and Veggies", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5, description: "These grilled vegetables are an assortment of colorful veggies bathed in a flavorful garlic and herb marinade, then cooked to perfection on the grill."),
    Product(productImage: "img07", productTitle: "Mango Ginger Rice Bowl", productPrice: "$8.50", productBG: Color.blue, productRating: 5, description: "Along with the sauce, these bowls with mango, black beans, shredded cabbage, and a few crunchy veggies – blanched snap peas, sliced cucumbers, and carrots. The interesting pops of flavor come not only from that dressing, but also from pickled ginger, sliced basil, and a combo of toasted peanuts and sesame seeds."),
    Product(productImage: "img08", productTitle: "Roasted Vegetables with Garlic and Herbs", productPrice: "$5.45", productBG: Color.gray, freeDelivery: true, productRating: 4, description: "This simple veggie blend of potatoes, carrots and green beans is seasoned with a delicious garlic and fresh herb blend then roasted to deliciousness. It’s an excellent go-to side dish that pairs well with just about anything!"),
    Product(productImage: "img09", productTitle: "Stir-Fried Sweet Chili Tofu", productPrice: "$8.80", productBG: Color.blue, productRating: 4, description: "This Stir-Fried Sweet Chili Tofu is delicously hearty with crispy pieces of tofu in a blend of sweet and spicy from the sauce! "),
    Product(productImage: "img10", productTitle: "Super vegan bowl with parsley cashew pesto", productPrice: "$8.80", productBG: Color.blue, productRating: 4, description: "Bát siêu thuần chay với pesto hạt điều mùi tây này dùng nóng hoặc lạnh đều tuyệt vời.")

]

var lunch = [
    
//    Product(productImage: "img01", productTitle: "Asian Sesame Cucumber Salad", productPrice: "$5.95", productBG: Color.gray ,productRating: 5, description: "Have you ever noticed how thirst-quenching it is to eat a cucumber? They’re like edible water bottles. Wait a minute… you guys… EDIBLE WATER BOTTLES. Why haven’t we done this yet?! Saving the environment by eating things?"),
//    Product(productImage: "img02", productTitle: "Broccoli and Mushroom Stir-Fry", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 3, description: "If you're a fan of Chinese beef with broccoli, this is the vegetarian version. Button and shiitake mushrooms were stir fried with broccoli florets, and tossed in a sticky sweet-salty sauce. Serve as a main dish for vegetarians or a side dish for omnivores."),
//    Product(productImage: "img03", productTitle: "Cobb Salad with the Best Dressing", productPrice: "$7.25", productBG: Color.purple, productRating: 3, description: "Easy Chicken Cobb Salad with the best homemade Cobb Salad Dressing! This protein-packed salad is a meal in itself loaded with crisp lettuce, juicy tomatoes, boiled eggs, creamy avocado and crumbled blue cheese."),
    Product(productImage: "img05", productTitle: "Garlic Herb Roasted Potatoes Carrots and Zucchini", productPrice: "$4.35", productBG: Color.green, freeDelivery: true, productRating: 4, description: "These roasted potatoes and carrots are coated in butter, garlic and herbs, then cooked until golden brown and tender."),
    Product(productImage: "img06", productTitle: "Grilled Garlic and Herb Chicken and Veggies", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5, description: "These grilled vegetables are an assortment of colorful veggies bathed in a flavorful garlic and herb marinade, then cooked to perfection on the grill."),
    Product(productImage: "img07", productTitle: "Mango Ginger Rice Bowl", productPrice: "$8.50", productBG: Color.blue, productRating: 5, description: "Along with the sauce, these bowls with mango, black beans, shredded cabbage, and a few crunchy veggies – blanched snap peas, sliced cucumbers, and carrots. The interesting pops of flavor come not only from that dressing, but also from pickled ginger, sliced basil, and a combo of toasted peanuts and sesame seeds."),
    Product(productImage: "img08", productTitle: "Roasted Vegetables with Garlic and Herbs", productPrice: "$5.45", productBG: Color.gray, freeDelivery: true, productRating: 4, description: "This simple veggie blend of potatoes, carrots and green beans is seasoned with a delicious garlic and fresh herb blend then roasted to deliciousness. It’s an excellent go-to side dish that pairs well with just about anything!"),
    Product(productImage: "img09", productTitle: "Stir-Fried Sweet Chili Tofu", productPrice: "$8.80", productBG: Color.blue, productRating: 4, description: "This Stir-Fried Sweet Chili Tofu is delicously hearty with crispy pieces of tofu in a blend of sweet and spicy from the sauce! "),
    Product(productImage: "img10", productTitle: "Super vegan bowl with parsley cashew pesto", productPrice: "$8.80", productBG: Color.blue, productRating: 4, description: "Bát siêu thuần chay với pesto hạt điều mùi tây này dùng nóng hoặc lạnh đều tuyệt vời.")

]

var dinner = [
    
    Product(productImage: "img01", productTitle: "Asian Sesame Cucumber Salad", productPrice: "$5.95", productBG: Color.gray ,productRating: 5, description: "Have you ever noticed how thirst-quenching it is to eat a cucumber? They’re like edible water bottles. Wait a minute… you guys… EDIBLE WATER BOTTLES. Why haven’t we done this yet?! Saving the environment by eating things?"),
    Product(productImage: "img02", productTitle: "Broccoli and Mushroom Stir-Fry", productPrice: "$4.3", productBG: Color.green, isLike: true, productRating: 3, description: "If you're a fan of Chinese beef with broccoli, this is the vegetarian version. Button and shiitake mushrooms were stir fried with broccoli florets, and tossed in a sticky sweet-salty sauce. Serve as a main dish for vegetarians or a side dish for omnivores."),
    Product(productImage: "img03", productTitle: "Cobb Salad with the Best Dressing", productPrice: "$7.25", productBG: Color.purple, productRating: 3, description: "Easy Chicken Cobb Salad with the best homemade Cobb Salad Dressing! This protein-packed salad is a meal in itself loaded with crisp lettuce, juicy tomatoes, boiled eggs, creamy avocado and crumbled blue cheese."),
//    Product(productImage: "img05", productTitle: "Garlic Herb Roasted Potatoes Carrots and Zucchini", productPrice: "$4.35", productBG: Color.green, freeDelivery: true, productRating: 4, description: "These roasted potatoes and carrots are coated in butter, garlic and herbs, then cooked until golden brown and tender."),
//    Product(productImage: "img06", productTitle: "Grilled Garlic and Herb Chicken and Veggies", productPrice: "$7.95", productBG: Color.purple, isLike: true, productRating: 5, description: "These grilled vegetables are an assortment of colorful veggies bathed in a flavorful garlic and herb marinade, then cooked to perfection on the grill."),
//    Product(productImage: "img07", productTitle: "Mango Ginger Rice Bowl", productPrice: "$8.50", productBG: Color.blue, productRating: 5, description: "Along with the sauce, these bowls with mango, black beans, shredded cabbage, and a few crunchy veggies – blanched snap peas, sliced cucumbers, and carrots. The interesting pops of flavor come not only from that dressing, but also from pickled ginger, sliced basil, and a combo of toasted peanuts and sesame seeds."),
    Product(productImage: "img08", productTitle: "Roasted Vegetables with Garlic and Herbs", productPrice: "$5.45", productBG: Color.gray, freeDelivery: true, productRating: 4, description: "This simple veggie blend of potatoes, carrots and green beans is seasoned with a delicious garlic and fresh herb blend then roasted to deliciousness. It’s an excellent go-to side dish that pairs well with just about anything!"),
    Product(productImage: "img09", productTitle: "Stir-Fried Sweet Chili Tofu", productPrice: "$8.80", productBG: Color.blue, productRating: 4, description: "This Stir-Fried Sweet Chili Tofu is delicously hearty with crispy pieces of tofu in a blend of sweet and spicy from the sauce! "),
    Product(productImage: "img10", productTitle: "Super vegan bowl with parsley cashew pesto", productPrice: "$8.80", productBG: Color.blue, productRating: 4, description: "Bát siêu thuần chay với pesto hạt điều mùi tây này dùng nóng hoặc lạnh đều tuyệt vời.")
    
]
