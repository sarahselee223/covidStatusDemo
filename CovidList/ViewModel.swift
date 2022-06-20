//
//  DataManager.swift
//  CovidList
//
//  Created by Sarah Lee on 6/19/22.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var covidData = [CovidModel]()
    
    func fetch() {
        let key = "2625f35786b0470898e8093ab2173a88"
        guard let url = URL(string: "https://api.covidactnow.org/v2/states.json?apiKey=\(key)") else {
            debugPrint("Invalid Url")
            return
        }
        let covidData = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                debugPrint("error")
                return
            }
            
            // converting data
            do {
                let result = try JSONDecoder().decode([CovidModel].self, from: data)
                DispatchQueue.main.async {
                    self?.covidData = result
                }
            }
            catch {
                print(error)
            }
        }
        covidData.resume()
    }
}
