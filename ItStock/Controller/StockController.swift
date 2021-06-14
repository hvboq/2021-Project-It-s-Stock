//
//  StockController.swift
//  ItStock
//
//  Created by 여동민 on 2021/04/20.
//

import RealmSwift

class StockController: ObservableObject {
    @Published var stocks: Results<StockModel>
    fileprivate let parser: XMLParse
    
    init() {
        self.parser = XMLParse()
        self.stocks = DatabaseManager.shared.getStock(type: StockModel.self)
    }
    
    func getStockByCode(_ code: String) {
        self.parser.loadData(code)
        self.stocks = DatabaseManager.shared.getStock(type: StockModel.self)
    }
    func getAllStock(){
        for item in stocks {
            self.parser.loadData(item.code);
        }
        
    }
}

// 관심종목 코드를 저장해서 그걸 앱을 실행했을때도 보여져야하고, 눌러서 해당 종목을 조회 가능해야한다.
//        stocks.append(StockModel(code: "035420"))
//        stocks.append(StockModel(code: "035720"))
