//
//  SharedDataModel.swift
//  porto3
//
//  Created by Naufal Fachreza on 06/04/23.
//

import SwiftUI

class SharedDataModel: ObservableObject {
    
    // Detail Product Data....
    @Published var detailProduct: Product?
    @Published var showDetailProduct: Bool = false
    
    // matched Geoemtry Effect from Search page...
    @Published var fromSearchPage: Bool = false
    
    // Liked Products...
    @Published var likedProducts: [Product] = []
    
    // basket Products...
    @Published var cartProducts: [Product] = []
    
    // calculating Total price...
    func getTotalPrice()->String{
        
        var total: Int = 0
        
        cartProducts.forEach { product in
            
            let price = product.price.replacingOccurrences(of: "Rp", with: "") as NSString
            
            let quantity = product.quantity
            let priceTotal = quantity * price.integerValue
            
            total += priceTotal
        }
        
        return "Rp.\(total).000"
    }
}
