//
//  DailyStock.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/31.
//

import XMLMapper

/*
 <TBL_DailyStock>
 <DailyStock
 day_Date="21/03/30"
 day_EndPrice="377,000"
 day_Dungrak="2"
 day_getDebi="5,000"
 day_Start="373,500"
 day_High="381,000"
 day_Low="373,500"
 day_Volume="574,838"
 day_getAmount="216,735,540,000"
 />
 */
class DailyStock: XMLMappable {
    var nodeName: String!
    
    var date: String?
    var endPrice: String?
    var dungrak: String?
    var getDebi: String?
    var start: String?
    var high: String?
    var low: String?
    var volume: String?
    var getAmount: String?
    
    required init?(map: XMLMap) {}
    
    func mapping(map: XMLMap) {
        date <- map.attributes["day_Date"]
        endPrice <- map.attributes["day_EndPrice"]
        dungrak <- map.attributes["day_Dungrak"]
        getDebi <- map.attributes["day_getDebi"]
        start <- map.attributes["day_Start"]
        high <- map.attributes["day_High"]
        low <- map.attributes["day_Low"]
        volume <- map.attributes["day_Volume"]
        getAmount <- map.attributes["day_getAmount"]
    }
}
