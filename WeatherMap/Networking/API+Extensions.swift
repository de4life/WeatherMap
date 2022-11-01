//
//  API+Extensions.swift
//  WeatherMap
//
//  Created by Артур Агеев on 27.10.2022.
//

import Foundation


extension API {
    static let baseURLString = "https://api.openweathermap.org/data/3.0/"
    
    static func getURLFor(lat: Double, lon: Double) -> String {
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
    
}
