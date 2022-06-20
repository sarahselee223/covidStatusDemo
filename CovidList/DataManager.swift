//
//  DataManager.swift
//  CovidList
//
//  Created by Sarah Lee on 6/19/22.
//

import Foundation

struct CovidModel: Codable, Identifiable, Hashable {
    let id = UUID()
    var state: String
    var population: Int
//    var metris:
//    var ristLevel: Int //
//    var actualCase: Int
//    var death: Int
//    var infectionRate: Int
//    var riskLevel: Int
    
}

class Api: ObservableObject {
    @Published var data = [CovidModel]()
    
    func loadData(completion: @escaping ([CovidModel]) -> ()) {
        let key = "2625f35786b0470898e8093ab2173a88"
        guard let url = URL(string: "https://api.covidactnow.org/v2/states.json?apiKey=\(key)") else {
            debugPrint("Invalid Url")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let covidData = try! JSONDecoder().decode([CovidModel].self, from: data!)
            print(covidData)
            DispatchQueue.main.async {
                completion(covidData)
            }
        }
    }
}
