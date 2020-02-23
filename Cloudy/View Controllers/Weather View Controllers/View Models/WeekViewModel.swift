//
//  WeekViewModel.swift
//  Cloudy
//
//  Created by perfil on 18/02/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import Foundation


struct WeekViewModel {
    
    let weatherData: [WeatherDayData]
    
    var numberOfSections: Int {
        return 1
    }
    
    var numberOfDays: Int {
        return weatherData.count
    }
    
    func viewModel(for index: Int) -> WeatherDayViewModel {
        return WeatherDayViewModel(weatherDayData: weatherData[index])
    }
    
}
