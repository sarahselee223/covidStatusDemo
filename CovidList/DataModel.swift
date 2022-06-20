//
//  DataModel.swift
//  CovidList
//
//  Created by Sarah Lee on 6/20/22.
//

import Foundation

struct CovidModel: Codable, Hashable {
    let state: String
    let population: Int
    let metrics: Metrics
    let riskLevels: RiskLevels
    let actuals: Actuals
//    var actualCase: Int
//    var death: Int
//    var infectionRate: Int
//    var riskLevel: Int
    
}

struct Metrics: Codable, Hashable {
    let testPositivityRatio: Double?
    let weeklyCovidAdmissionsPer100k: Double?
    let vaccinationsCompletedRatio: Double?
    
    init(json: [String: Double?]) {
        testPositivityRatio = json["testPositivityRatio"] as? Double
        weeklyCovidAdmissionsPer100k = json["weeklyCovidAdmissionsPer100k"] as? Double
        vaccinationsCompletedRatio = json["vaccinationsCompletedRatio"] as? Double
    }
}

struct RiskLevels: Codable, Hashable {
    let overall: Int?
    let testPositivityRatio: Int?
    
    init(json: [String: Int?]) {
        overall = json["overall"] as? Int
        testPositivityRatio = json["testPositivityRatio"] as? Int
    }
}

struct Actuals: Codable, Hashable {
    let cases: Int?
    let deaths: Int?
    let vaccinationsCompleted: Int?
    
    
    init(json: [String: Int?]) {
        cases = json["cases"] as? Int
        deaths = json["deaths"] as? Int
        vaccinationsCompleted = json["vaccinationsCompleted"] as? Int
    }
}

struct hospitalBeds: Codable, Hashable {
    let capacity: Int?
    let currentUsageTotal: Int?
    let currentUsageCovid: Int?
    let weeklyCovidAdmissions: Int?
    
    init(json: [String: Int?]) {
        capacity = json["capacity"] as? Int
        currentUsageTotal = json["currentUsageTotal"] as? Int
        currentUsageCovid = json["currentUsageCovid"] as? Int
        weeklyCovidAdmissions = json["weeklyCovidAdmissions"] as? Int
    }
}

struct icuBeds: Codable, Hashable {
    let capacity: Int?
    let currentUsageTotal: Int?
    let currentUsageCovid: Int?
    
    init(json: [String: Int?]) {
        capacity = json["capacity"] as? Int
        currentUsageTotal = json["currentUsageTotal"] as? Int
        currentUsageCovid = json["currentUsageCovid"] as? Int
    }
}
