//
//  DetailView.swift
//  CovidList
//
//  Created by Sarah Lee on 6/19/22.
//

import SwiftUI

struct DetailView: View {
    var fruit: Fruit
//    var covidData: CovidModel
    
    var body: some View {
        Text(fruit.name)
//        Text(covidData.state)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(fruit: Fruit)
//    }
//}
