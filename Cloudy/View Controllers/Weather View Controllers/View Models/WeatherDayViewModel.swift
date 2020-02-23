//
//  WeatherDayViewModel.swift
//  Cloudy
//
//  Created by perfil on 18/02/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import UIKit

struct WeatherDayViewModel {
    
    let weatherDayData: WeatherDayData
    
    private let dayFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter
    }()
    
    private let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d"
        return dateFormatter
    }()
    
    var day: String {
        return dayFormatter.string(from: weatherDayData.time)
    }
    
    var date: String {
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    var temperature: String {
        let min = format(temperature: weatherDayData.temperatureMin)
        let max = format(temperature: weatherDayData.temperatureMax)
        return "\(min) - \(max)"
    }
    
    var windSpeed: String {
        let windSpeed = weatherDayData.windSpeed
        return UserDefaults.unitsNotation().formatted(windSpeed: windSpeed)
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherDayData.icon)
    }
    
    func format(temperature: Double) -> String {
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.0f ºF", temperature)
        case .celsius:
            return String(format: "%.0f ºC", temperature.toCelcius())
        }
    }
}
