//
//  DBModel.swift
//  MacTestProject
//
//  Created by 여동민 on 2021/04/13.
//

import RealmSwift

class StockModel: Object, Identifiable {
    @objc dynamic var code = ""
    @objc dynamic var name = ""
    @objc dynamic var curPrice = 0
    @objc dynamic var purchasePrice = 0
    @objc dynamic var variationRate = 0
    
    convenience init(code : String){
        self.init()
        self.code = code;
    }
    
//    init(code: String, name: String, curPrice: Int, purchasePrice: Int, variationRate: Int) {
//        self.code = code
//        self.name = name
//        self.curPrice = curPrice
//        self.purchasePrice = purchasePrice
//        self.variationRate = variationRate
//    }
}
