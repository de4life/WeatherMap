//
//  WeatherResponse.swift
//  WeatherMap
//
//  Created by Артур Агеев on 27.10.2022.
//

import Foundation


struct WeatherResponse: Codable {
    var current: Weather
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(current: Weather(), hourly: [Weather](repeating: Weather()
                                                                     , count: 23), daily: [DailyWeather](repeating: DailyWeather(), count: 8))
    }
    
}
