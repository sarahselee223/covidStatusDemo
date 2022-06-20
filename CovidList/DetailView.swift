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
        
        Text(String(covidData.metrics.testPositivityRatio ?? 0))
        Text(String(covidData.riskLevels.testPositivityRatio ?? 0))
        Text(String(covidData.actuals.vaccinationsCompleted ?? 0))
    }
}
