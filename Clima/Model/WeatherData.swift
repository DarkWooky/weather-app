//
//  WeatherData.swift
//  Clima
//
//  Created by Egor Mihalevich on 29.08.21.
//

import Foundation

// MARK: - WeatherData

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

// MARK: - Main

struct Main: Codable {
    let temp: Double
}

// MARK: - Weather

struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
}
