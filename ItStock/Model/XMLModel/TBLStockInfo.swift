//
//  TBLStockInfo.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/31.
//

import XMLMapper

class TBLStockInfo: XMLMappable {
    var nodeName: String!
    
    var JongName: String?
    var CurJuka: String?
    var DungRak: String?
    var Debi: String?
    var PrevJuka: String?
    var Volume: String?
    var Money: String?
    var StartJuka: String?
    var HighJuka: String?
    var LowJuka: String?
    var High52: String?
    var Low52: String?
    var UpJuka: String?
    var DownJuka: String?
    var Per: String?
    var Amount: String?
    var FaceJuka: String?
    
    required init?(map: XMLMap) {}
    
    func mapping(map: XMLMap) {
        JongName <- map.attributes["JongName"]
        CurJuka <- map.attributes["CurJuka"]
        DungRak <- map.attributes["DungRak"]
        Debi <- map.attributes["Debi"]
        PrevJuka <- map.attributes["PrevJuka"]
        Volume <- map.attributes["Volume"]
        Money <- map.attributes["Money"]
        StartJuka <- map.attributes["StartJuka"]
        HighJuka <- map.attributes["HighJuka"]
        LowJuka <- map.attributes["LowJuka"]
        High52 <- map.attributes["High52"]
        Low52 <- map.attributes["Low52"]
        UpJuka <- map.attributes["UpJuka"]
        DownJuka <- map.attributes["DownJuka"]
        Per <- map.attributes["Per"]
        Amount <- map.attributes["Amount"]
        FaceJuka <- map.attributes["FaceJuka"]
    }
}
