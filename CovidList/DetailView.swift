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
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("Total Population: ")
                    Spacer()
                    Text(String(covidData.population ))
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                HStack {
                    Text("Overall Risk Levels: ")
                    Spacer()
                    Text(String(covidData.riskLevels.overall ?? 0 ))
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                HStack {
                    Text("Test Positive Ratio: ")
                    Spacer()
                    Text(String(covidData.metrics.testPositivityRatio ?? 0))
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                HStack {
                    Text("Actual Cases: ")
                    Spacer()
                    Text(String(covidData.actuals.cases ?? 0))
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                HStack {
                    Text("Death Cases: ")
                    Spacer()
                    Text(String(covidData.actuals.deaths ?? 0))
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                HStack(spacing: 20) {
                    Text("Vaccination Completed: ")
                    Spacer()
                    Text(String(covidData.actuals.vaccinationsCompleted ?? 0))
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                 HStack(spacing: 20) {
                     Text("Vaccination Completed Percentage: ")
                     Spacer()
                     Text(
                            String(
                                (
                                    Int(Double(covidData.actuals.vaccinationsCompleted ?? 0) / Double(covidData.population) * 100)
                                )
                            ) + " %"
                    )
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
            .navigationTitle(stateHashMap[covidData.state]!)
    }
}
