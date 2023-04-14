//
//  Product.swift
//  porto3
//
//  Created by Naufal Fachreza on 06/04/23.
//

import SwiftUI

// Product Model....
struct Product: Identifiable,Hashable {
    var id = UUID().uuidString
    var type: ProductType
    var title: String
    var subtitle: String
    var description: String
    var price: String
    var productImage: String = ""
    var quantity: Int = 1
}

// Product Types...
enum ProductType: String,CaseIterable{
    case Fruits = "Fruits"
    case Vegetables = "Vegetable"
    case Seafood = "Seafood"
    case Others = "Others"
}

