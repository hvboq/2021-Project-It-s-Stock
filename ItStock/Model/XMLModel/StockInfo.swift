//
//  StockInfo.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/31.
//

import XMLMapper

class StockInfo: XMLMappable {
    var nodeName: String!
    
    var kosdaqJisu: String?
    var kosdaqJisuBuho: String?
    var kosdaqJisuDebi: String?
    var starJisu: String?
    var starJisuBuho: String?
    var starJisuDebi: String?
    var jisu50: String?
    var jisu50Buho: String?
    var jisu50Debi: String?
    var myNowTime: String?
    var myJangGubun: String?
    var myPublicPrice: String?
    var krx100Jisu: String?
    var krx100buho: String?
    var krx100Debi: String?
    var kospiJisu: String?
    var kospiBuho: String?
    var kospiDebi: String?
    var kospi200Jisu: String?
    var kospi200Buho: String?
    var kospi200Debi: String?
    
    required init?(map: XMLMap) {}
    
    func mapping(map: XMLMap) {
        kosdaqJisu <- map.attributes["kosdaqJisu"]
        kosdaqJisuBuho <- map.attributes["kosdaqJisuBuho"]
        kosdaqJisuDebi <- map.attributes["kosdaqJisuDebi"]
        starJisu <- map.attributes["starJisu"]
        starJisuBuho <- map.attributes["starJisuBuho"]
        starJisuDebi <- map.attributes["starJisuDebi"]
        jisu50 <- map.attributes["jisu50"]
        jisu50Buho <- map.attributes["jisu50Buho"]
        jisu50Debi <- map.attributes["jisu50Debi"]
        myNowTime <- map.attributes["myNowTime"]
        myJangGubun <- map.attributes["myJangGubun"]
        myPublicPrice <- map.attributes["myPublicPrice"]
        krx100Jisu <- map.attributes["krx100Jisu"]
        krx100buho <- map.attributes["krx100buho"]
        krx100Debi <- map.attributes["krx100Debi"]
        kospiJisu <- map.attributes["kospiJisu"]
        kospiBuho <- map.attributes["kospiBuho"]
        kospiDebi <- map.attributes["kospiDebi"]
        kospi200Jisu <- map.attributes["kospi200Jisu"]
        kospi200Buho <- map.attributes["kospi200Buho"]
        kospi200Debi <- map.attributes["kospi200Debi"]
    }
}
