//
//  ContentView.swift
//  CovidList
//
//  Created by Sarah Lee on 6/19/22.
//

import SwiftUI

struct ContentView: View {
    var fruits = [
        Fruit(name: "Apple"),
        Fruit(name: "Banana"),
        Fruit(name: "Grape"),
        Fruit(name: "Kiwi"),
        Fruit(name: "Pear"),
        Fruit(name: "Melon"),
        Fruit(name: "Strawberries")
    ]
    
    @State var covidData = [CovidModel]()
    
    var body: some View {
        
        NavigationStack {
//            List(covidData) { data in
//                NavigationLink(data.state, value: data)
//            }
//            .onAppear() {
//                Api().loadData(completion: { (covidData) in
//                    self.covidData = covidData
//                })
//            }
//            .navigationBarTitleDisplayMode(.large)
//            .navigationTitle("Covid Data by State")
//            .navigationDestination(for: CovidModel.self) { data in
//                DetailView(covidData: data)
//            }
            List(fruits) { fruit in
                NavigationLink(fruit.name, value: fruit)
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Fruits")
            .navigationDestination(for: Fruit.self) { fruit in
                DetailView(fruit: fruit)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
