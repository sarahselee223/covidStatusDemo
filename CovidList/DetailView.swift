//
//  DetailView.swift
//  CovidList
//
//  Created by Sarah Lee on 6/19/22.
//

import SwiftUI

struct DetailView: View {
    var covidData: CovidModel
    
    var body: some View {
        Text(covidData.state)
    }
}
