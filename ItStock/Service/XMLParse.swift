//
//  XMLParseController.swift
//  StockXML
//
//  Created by 강민석 on 2021/03/30.
//

import XMLMapper

class XMLParse: NSObject, ObservableObject {
    var stockUrl = "http://asp1.krx.co.kr/servlet/krx.asp.XMLSise?code="
    @Published var itemStore: StockXMLModel?
    
    func loadData(_ stockCode: String) {
        guard let url = URL(string: stockUrl + stockCode) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error == nil {
                var content = String(data: data!,encoding: .init(rawValue: String.Encoding.utf8.rawValue))

                content?.removeFirst() // 첫 번째 \n 삭제
                let fIndex = content!.firstIndex(of: "\n") // xml declaration 바로 다음 \n의 인덱스 값을 가져오기
                let xmlTxt = String(content![fIndex!...]) // xml declaration 이후를 저장
                
                DispatchQueue.main.async {
                    self.itemStore = StockXMLModel(XMLString: xmlTxt)
                    
                    let name = self.itemStore?.TBL_StockInfo?.JongName
                    let curPrice = Int(self.itemStore?.TBL_StockInfo?.CurJuka?.components(separatedBy: ",").joined() ?? "")
                    
//                    let newStock = StockModel(code: stockCode,
//                                              name: name ?? "",
//                                              curPrice: curPrice ?? 0,
//                                              purchasePrice: 0,
//                                              variationRate: 0)
                    
                    let newStock = StockModel(code: stockCode)
                    newStock.name = name ?? ""
                    newStock.curPrice = curPrice ?? 0
                    
                    DatabaseManager.shared.add(newStock)
                    
                    print(newStock.curPrice)
                    print(newStock.name)
                }
                
            } else {
                print("error")
            }
        }.resume()
    }
}
