//
//  XMLParseController.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/30.
//

import SwiftUI
import XMLMapper
import RealmSwift

class XMLParse: NSObject, ObservableObject {
    
    public var dbModel = DBModel()
    
    @Published var itemStore: StockPrice?
    
    func loadData(_ urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error == nil {
                var content = String(data: data!,encoding: .init(rawValue: String.Encoding.utf8.rawValue))

                content?.removeFirst() // 첫 번째 \n 삭제
                let fIndex = content!.firstIndex(of: "\n") // xml declaration 바로 다음 \n의 인덱스 값을 가져오기
                let xmlTxt = String(content![fIndex!...]) // xml declaration 이후를 저장
                
                print(xmlTxt)
                
                DispatchQueue.main.async {
                    self.itemStore = StockPrice(XMLString: xmlTxt)
                    
                    self.dbModel.name = self.itemStore!.TBL_StockInfo!.JongName!
                    self.dbModel.price = Int(self.itemStore!.TBL_StockInfo!.CurJuka!.components(separatedBy:",").joined()) ?? 0
                    
                    print(self.dbModel.price)
                }
                
            } else {
                print("error")
            }
        }.resume()
    }
}
