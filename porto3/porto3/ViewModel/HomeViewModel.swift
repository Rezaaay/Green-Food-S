//
//  HomeViewModel.swift
//  porto3
//
//  Created by Naufal Fachreza on 06/04/23.
//

import SwiftUI

import Combine

class HomeViewModel: ObservableObject {

    @Published var productType: ProductType = .Fruits
    
    // Sample Products...
    @Published var products: [Product] = [
    
        Product(type: .Fruits, title: "Mangga", subtitle: "Mangga Indramayu", description: "Mangga Indramayu adalah jenis buah mangga yang berasal dari Kabupaten Indramayu, Jawa Barat, Indonesia. Buah ini dikenal dengan karakteristiknya yang unik, dengan kulit yang halus dan berwarna hijau kekuningan, serta daging buah yang tebal dan beraroma harum. Mangga Indramayu memiliki rasa manis dengan keasaman yang seimbang, membuatnya sangat nikmat untuk dinikmati sebagai buah segar atau sebagai bahan baku dalam berbagai hidangan", price: "Rp 12.000/Kg",productImage: "buah"),
        Product(type: .Fruits, title: "Jambu", subtitle: "Jambu Kristal", description: "Jambu Kristal, atau sering juga disebut sebagai Jambu Air Kristal, adalah buah tropis yang memiliki ciri khas bentuk dan tampilan yang unik. Jambu Kristal memiliki kulit tipis dan transparan yang menyerupai kristal, sehingga memberikan kesan yang sangat menarik dan eksotik. Biasanya kulit jambu kristal berwarna hijau atau kuning pucat, dengan daging buah yang berwarna putih atau merah muda terang.", price: "Rp 12.000/Kg", productImage: "buah1"),
        Product(type: .Fruits, title: "Nanas", subtitle: "Nanas Madu",description: "Nanas Madu adalah varietas nanas yang memiliki ciri khas rasa manis dan aroma harum yang sangat menggoda. Buah ini biasanya memiliki ukuran yang cukup besar, dengan daging buah yang juicy dan berair. Kulitnya berwarna hijau terang dengan sisik-sisik yang teratur dan bisa dipisahkan dengan mudah.", price: "Rp 15.000/Kg", productImage: "buah2"),
        Product(type: .Fruits, title: "Semangka", subtitle: "Semangka Merah",description: "Semangka Merah adalah varietas semangka yang memiliki ciri khas kulit yang berwarna merah cerah atau merah tua, yang membuatnya terlihat sangat menarik dan eksotik. Kulitnya biasanya memiliki pola belang hitam yang kontras, memberikan tampilan yang sangat menarik dan unik. Semangka Merah juga dikenal sebagai semangka madu karena memiliki rasa yang manis dan lezat.", price: "Rp 25.000/Kg", productImage: "buah3"),
        Product(type: .Seafood, title: "Ikan Laut", subtitle: "Ikan Tongkol",description: "Ikan Tongkol adalah jenis ikan laut yang memiliki ciri khas tubuh yang panjang dan ramping, dengan warna kulit yang cerah dan pola belang-belang hitam di punggung dan sisi tubuhnya. Ikan ini dikenal sebagai ikan pelagis yang dapat ditemukan di perairan tropis dan subtropis di seluruh dunia, terutama di Samudera Hindia dan Samudera Pasifik.", price: "Rp 17.000/Kg", productImage: "seafood"),
        Product(type: .Seafood, title: "Udang Lobster", subtitle: "Lobster Laut Cirebon",description: "Udang Lobster adalah salah satu jenis udang laut yang memiliki ciri khas tubuh yang besar, panjang, dan kokoh. Udang ini dikenal dengan cangkang keras yang melindungi tubuhnya, serta memiliki sepasang capit yang kuat dan cakar-cakar tajam yang digunakan untuk berburu dan bertahan dari pemangsa. Udang Lobster ditemukan di berbagai perairan laut di seluruh dunia, terutama di daerah Samudera Atlantik dan Samudera Pasifik.", price: "Rp 70.000/Kg", productImage: "seafood1"),
        Product(type: .Seafood, title: "Kepiting", subtitle: "Kepiting Laut",description: "Kepiting adalah salah satu jenis krustasea atau hewan berkaki rata yang ditemukan di perairan laut di seluruh dunia. Kepiting dikenal dengan ciri khas cangkang keras yang melindungi tubuhnya serta sepasang capit yang kuat yang digunakan untuk mencari makan, bergerak, dan bertahan dari pemangsa. Ada banyak spesies kepiting yang beragam bentuk, warna, dan ukuran, dan menjadi komoditas penting dalam industri perikanan dan kuliner.", price: "Rp 80.000/Kg", productImage: "seafood2"),
        Product(type: .Seafood, title: "Gurita", subtitle: "Gurita Laut Papua",description: "Gurita adalah salah satu jenis hewan laut yang termasuk dalam kelas Cephalopoda, yang juga mencakup cumi-cumi dan sotong. Gurita dikenal dengan tubuh yang lunak dan delapan lengan panjang yang disebut tentakel, yang digunakan untuk berburu mangsa, bergerak, dan berinteraksi dengan lingkungan sekitarnya. Gurita memiliki beragam spesies, ukuran, dan warna yang menarik perhatian banyak orang di seluruh dunia.", price: "Rp 70.000/Kg", productImage: "seafood3"),
        Product(type: .Vegetables, title: "Cabai", subtitle: "Cabai Keriting",description: "Cabai keriting, juga dikenal sebagai cabai rawit atau cabai cabean, adalah salah satu varietas cabai yang memiliki bentuk keriting atau bergelombang pada kulit buahnya. Cabai keriting biasanya lebih kecil dan lebih panas daripada cabai merah biasa, dan digunakan sebagai bumbu dapur untuk memberikan rasa pedas pada masakan.", price: "Rp 10.000/100g", productImage: "sayur"),
        Product(type: .Vegetables, title: "Sawi", subtitle: "Sawi Hidroponik",description: "Sawi juga dikenal sebagai sawi hijau atau mustard hijau, adalah sejenis sayuran hijau yang termasuk dalam keluarga Brassicaceae. Sawi memiliki daun berbentuk bulat atau oval, dengan batang yang panjang dan seringkali berwarna hijau muda atau hijau gelap. Sawi biasanya ditanam sebagai tanaman tahunan atau tanaman musiman dalam budidaya sayuran.", price: "Rp 5000/ikat", productImage: "sayur1"),
        Product(type: .Vegetables, title: "Daun Mint", subtitle: "Mint Jerman",description: "Daun mint, juga dikenal sebagai daun pudina, adalah daun hijau yang dihasilkan oleh tanaman mint, yang termasuk dalam genus Mentha. Mint adalah tumbuhan herbal yang dikenal karena aroma segarnya yang khas dan rasa yang tajam. Daun mint umumnya berukuran kecil dengan bentuk bulat atau oval, berwarna hijau cerah, dan memiliki tekstur bergerigi.", price: "Rp 12.000/100g", productImage: "sayur2"),
        Product(type: .Vegetables, title: "Selada Air", subtitle: "Selada Air Hidroponik",description: "Selada air, juga dikenal sebagai watercress, adalah jenis tumbuhan yang biasanya tumbuh di air tawar atau di tempat yang lembap. Selada air memiliki daun hijau kecil yang berbentuk bulat atau oval, dengan batang dan akar yang biasanya terendam di air atau tanah yang lembap. Selada air dikenal dengan rasa segar yang khas dan kandungan gizi yang tinggi.", price: "Rp 15.000/Kg", productImage: "sayur3"),
        Product(type: .Others, title: "Ubi", subtitle: "Ubi Cilembu",description: "Ubi Cilembu, atau sering juga disebut Ubi Cilembu Garut, adalah jenis ubi manis yang berasal dari daerah Cilembu, Garut, Jawa Barat, Indonesia. Ubi Cilembu dikenal karena rasa manisnya yang khas, tekstur lembut, dan aroma yang menggoda. Ubi Cilembu memiliki kulit berwarna cokelat kemerahan atau keunguan, dengan daging yang berwarna kuning atau oranye. Ubi Cilembu memiliki rasa yang sangat manis, melebihi rasa manis ubi pada umumnya. Tekstur daging ubi Cilembu sangat lembut dan lezat ketika dimasak, sehingga cocok digunakan dalam berbagai macam hidangan", price: "Rp 20.000/Kg", productImage: "other"),
        Product(type: .Others, title: "Tomat", subtitle: "Tomat Belanda",description: "Tomat adalah buah yang biasanya digunakan sebagai sayuran dalam kuliner. Tomat memiliki bentuk bulat atau berbentuk jantung dengan kulit yang halus dan berwarna merah cerah, meskipun ada pula varietas tomat dengan warna, bentuk, dan ukuran yang beragam, seperti kuning, hijau, oranye, ungu, kecil, besar, atau oval. Tomat umumnya dikenal karena rasa asam-manis yang segar dan aroma yang khas.", price: "Rp 15.000/Kg", productImage: "other1"),
        Product(type: .Others, title: "Kentang", subtitle: "Kentang Dieng",description: "Kentang adalah salah satu jenis umbi-umbian yang sering digunakan sebagai bahan makanan dalam berbagai masakan di seluruh dunia. Kentang memiliki bentuk bulat atau oval, dengan kulit yang kasar dan berwarna cokelat atau kuning tergantung pada varietasnya. Daging kentang berwarna putih atau kuning pucat, dan memiliki tekstur yang lembut dan empuk ketika dimasak.", price: "Rp 12.000/Kg", productImage: "other2"),
        Product(type: .Others, title: "Timun", subtitle: "Timun Bogor",description: "Timun, atau dikenal juga sebagai mentimun, adalah jenis buah yang sering digunakan sebagai sayuran dalam kuliner. Timun memiliki bentuk silinder panjang atau bulat oval dengan kulit yang halus dan berwarna hijau atau kuning muda, tergantung pada varietasnya. Daging timun biasanya berwarna putih atau kuning pucat, dan memiliki rasa segar dan renyah ketika dikonsumsi.", price: "Rp 10.000/Kg", productImage: "other3"),
    ]
    
    // Filtered Products...
    @Published var filteredProducts: [Product] = []
    
    // More products on the type..
    @Published var showMoreProductsOnType: Bool = false
    
    // Search Data...
    @Published var searchText: String = ""
    @Published var searchActivated: Bool = false
    @Published var searchedProducts: [Product]?
    
    var searchCancellable: AnyCancellable?
    
    init(){
        filterProductByType()
        
        searchCancellable = $searchText.removeDuplicates()
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .sink(receiveValue: { str in
                if str != ""{
                    self.filterProductBySearch()
                }
                else{
                    self.searchedProducts = nil
                }
            })
    }
    
    func filterProductByType(){
        
        // Filtering Product By Product Type...
        DispatchQueue.global(qos: .userInteractive).async {
            
            let results = self.products
            // Since it will require more memory so were using lazy to perform more...
                .lazy
                .filter { product in
                    
                    return product.type == self.productType
                }
            // Limiting result...
                .prefix(4)
            
            DispatchQueue.main.async {
                
                self.filteredProducts = results.compactMap({ product in
                    return product
                })
            }
        }
    }
    
    func filterProductBySearch(){
        
        // Filtering Product By Product Type...
        DispatchQueue.global(qos: .userInteractive).async {
            
            let results = self.products
            // Since it will require more memory so were using lazy to perform more...
                .lazy
                .filter { product in
                    
                    return product.title.lowercased().contains(self.searchText.lowercased())
                }
            
            DispatchQueue.main.async {
                
                self.searchedProducts = results.compactMap({ product in
                    return product
                })
            }
        }
    }
}
