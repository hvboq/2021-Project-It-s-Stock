//
//  AskPrice.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/31.
//

import XMLMapper

class AskPrice: XMLMappable {
    var nodeName: String!
    
    var memdoMem: String?
    var memdoVol: String?
    var memsoMem: String?
    var mesuoVol: String?
    
    required init?(map: XMLMap) {}
    
    func mapping(map: XMLMap) {
        memdoMem <- map.attributes["member_memdoMem"]
        memdoVol <- map.attributes["member_memdoVol"]
        memsoMem <- map.attributes["member_memsoMem"]
        mesuoVol <- map.attributes["member_mesuoVol"]
    }
}
