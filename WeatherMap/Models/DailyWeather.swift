//
//  DailyWeather.swift
//  WeatherMap
//
//  Created by Артур Агеев on 27.10.2022.
//

import Foundation


struct DailyWeather: Codable, Identifiable {
    var dt: Int
    var temp:Temperature
    var weather: [WeatherDetail]
    
enum CodingKey: String {
    case dt
    case temp
    case weather
}
    init() {
        dt = 0
        temp = Temperature(min: 0
                           , max: 0.0)
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}


extension DailyWeather {
    var id: UUID {
        return UUID()
    }
}
