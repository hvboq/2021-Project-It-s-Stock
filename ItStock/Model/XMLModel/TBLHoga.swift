//
//  TBLHoga.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/31.
//

import XMLMapper

class TBLHoga: XMLMappable {
    var nodeName: String!
    
    var mesuJan0: String?
    var mesuHoka0: String?
    var mesuJan1: String?
    var mesuHoka1: String?
    var mesuJan2: String?
    var mesuHoka2: String?
    var mesuJan3: String?
    var mesuHoka3: String?
    var mesuJan4: String?
    var mesuHoka4: String?
    var medoJan0: String?
    var medoHoka0: String?
    var medoJan1: String?
    var medoHoka1: String?
    var medoJan2: String?
    var medoHoka2: String?
    var medoJan3: String?
    var medoHoka3: String?
    var medoJan4: String?
    var medoHoka4: String?
    
    required init?(map: XMLMap) {}
    
    func mapping(map: XMLMap) {
        mesuJan0 <- map.attributes["mesuJan0"]
        mesuHoka0 <- map.attributes["mesuHoka0"]
        mesuJan1 <- map.attributes["mesuJan1"]
        mesuHoka1 <- map.attributes["mesuHoka1"]
        mesuJan2 <- map.attributes["mesuJan2"]
        mesuHoka2 <- map.attributes["mesuHoka2"]
        mesuJan3 <- map.attributes["mesuJan3"]
        mesuHoka3 <- map.attributes["mesuHoka3"]
        mesuJan4 <- map.attributes["mesuJan4"]
        mesuHoka4 <- map.attributes["mesuHoka4"]
        medoJan0 <- map.attributes["medoJan0"]
        medoHoka0 <- map.attributes["medoHoka0"]
        medoJan1 <- map.attributes["medoJan1"]
        medoHoka1 <- map.attributes["medoHoka1"]
        medoJan2 <- map.attributes["medoJan2"]
        medoHoka2 <- map.attributes["medoHoka2"]
        medoJan3 <- map.attributes["medoJan3"]
        medoHoka3 <- map.attributes["medoHoka3"]
        medoJan4 <- map.attributes["medoJan4"]
        medoHoka4 <- map.attributes["medoHoka4"]
    }
}
