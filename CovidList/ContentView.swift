//
//  ContentView.swift
//  CovidList
//
//  Created by Sarah Lee on 6/19/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(viewModel.covidData, id: \.self) { data in
                    NavigationLink(data.state, value: data)
                }
            }
            .onAppear() {
                viewModel.fetch()
            }
            .navigationTitle("Covid Data by State")
            .navigationDestination(for: CovidModel.self) { data in
                DetailView(covidData: data)
            }
        }
    }
}
