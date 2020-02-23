//
//  DayViewModel.swift
//  Cloudy
//
//  Created by perfil on 18/02/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import UIKit

struct DayViewModel {
    
    let weatherData: WeatherData
    
    private let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE, MMMM d"
        return dateFormatter
    }()
    
    private let timeFormatter = DateFormatter()
    
    var date: String {
        return dateFormatter.string(from: weatherData.time)
    }
    
    var time: String {
        timeFormatter.dateFormat = UserDefaults.timeNotation().timeFormat
        return timeFormatter.string(from: weatherData.time)
    }
    
    var summary: String {
        return weatherData.summary
    }
    
    var temperature: String {
        let temperature = weatherData.temperature
        switch UserDefaults.temperatureNotation() {
        case .celsius:
            return String(format: "%.1f ºC", temperature.toCelcius())
        case .fahrenheit:
            return String(format: "%.1f ºF", temperature)
        }
    }
    
    var windSpeed: String {
        let windSpeed = weatherData.windSpeed
        return UserDefaults.unitsNotation().formatted(windSpeed: windSpeed)
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherData.icon)
    }
    
    
}
