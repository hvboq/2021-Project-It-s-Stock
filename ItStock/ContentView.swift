//
//  ContentView.swift
//  MacTestProject
//
//  Created by 여동민 on 2021/04/06.
//

import SwiftUI

struct StockRow: View {
    var name: String
    var price: Int
    var body: some View {
        Text(name + " " + String(price))
    }
}

struct ContentView: View {
    
    @ObservedObject var parserControl = XMLParse()
    var stockUrl = "http://asp1.krx.co.kr/servlet/krx.asp.XMLSise?code=035420"
    
    var body: some View {
        if let itemResult = parserControl.itemStore {
            List {
                StockRow(name: parserControl.dbModel.name , price: parserControl.dbModel.price)
                StockRow(name: parserControl.dbModel.name , price: parserControl.dbModel.price)
                StockRow(name: parserControl.dbModel.name , price: parserControl.dbModel.price)
            }
        } else {
            VStack {
                Text("none")
                Button {
                    self.parserControl.loadData(stockUrl)
                } label: {
                    Text("Refresh")
                }
            }.frame(width: 500, height: 500)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
