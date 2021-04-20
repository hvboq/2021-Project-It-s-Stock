//
//  TBLTimeConclude.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/31.
//

import XMLMapper

class TBLTimeConclude: XMLMappable {
    var nodeName: String!
    
    var time: String?
    var negoprice: String?
    var Dungrak: String?
    var Debi: String?
    var sellprice: String?
    var buyprice: String?
    var amount: String?
    
    required init?(map: XMLMap) {}
    
    func mapping(map: XMLMap) {
        time <- map.attributes["time"]
        negoprice <- map.attributes["negoprice"]
        Dungrak <- map.attributes["Dungrak"]
        Debi <- map.attributes["Debi"]
        sellprice <- map.attributes["sellprice"]
        buyprice <- map.attributes["buyprice"]
        amount <- map.attributes["amount"]
    }
}
