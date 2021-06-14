//
//  ContentView.swift
//  MacTestProject
//
//  Created by 여동민 on 2021/04/06.
//

import SwiftUI
import RealmSwift

struct StockRow: View {
    var stock : StockModel
    var body: some View {
        Text(stock.name + " " + String(stock.curPrice))
    }
}

struct ContentView: View {
    @State var isInserting = false
    @State var isSetting = false
    
    @State var stockCode: String = ""
    
    @ObservedObject var stockFetcher = StockController()
    
    var body: some View {
        VStack{
            HStack{
                Button(action: { self.isInserting.toggle() }) {
                    Text("설정")
                }.popover(isPresented: self.$isInserting, arrowEdge: .bottom) {
                    InsertStockPopoverView()
                }
                Button(action: { self.stockFetcher.getStockByCode(stockCode) }) {
                    Text("+")
                }
            }
            
            List(stockFetcher.stocks) { response in
                HStack {
                    Text(response.code)
                    Text(response.name)
                    Spacer()
                    Text("\(response.curPrice) 원")
                }
                
                
            }.frame(width: 500, height: 300)
            
            HStack {
                TextField("Input Stock Code", text: $stockCode)
                    .padding()
                
                Button {
                    self.stockFetcher.getAllStock()
                } label: {
                    Text("Refresh")
                }.padding()
            }
        }.frame(width:500, height: 400)
    }
}

struct InsertStockPopoverView: View {
    var body: some View {
        VStack {
            Text("Some text here ").padding()
            Button("Resume") {
            }
        }.padding()
    }
}
struct SettingPopoverView: View {
    var body: some View {
        VStack{
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
