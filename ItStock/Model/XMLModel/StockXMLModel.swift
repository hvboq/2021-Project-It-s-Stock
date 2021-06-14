//
//  StockPrice.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/31.
// thanks for 강민석
//

import XMLMapper

/// stockprice 전체
class StockXMLModel: XMLMappable {
    var nodeName: String!
    
    var querytime: String?
    
    var TBL_DailyStock: [DailyStock]?
    var TBL_AskPrice: [AskPrice]?
    var TBL_StockInfo: TBLStockInfo?
    var TBL_Hoga: TBLHoga?
    var TBL_TimeConclude: [TBLTimeConclude]?
    var stockInfo: StockInfo?
    
    required init?(map: XMLMap) {}
    
    func mapping(map: XMLMap) {
        querytime <- map.attributes["querytime"]
        
        TBL_DailyStock <- map["TBL_DailyStock"]
        TBL_AskPrice <- map["TBL_AskPrice"]
        TBL_StockInfo <- map["TBL_StockInfo"]
        TBL_Hoga <- map["TBL_Hoga"]
        TBL_TimeConclude <- map["TBL_TimeConclude"]
        stockInfo <- map["stockInfo"]
    }
}
