//
//  SettingsTemperatureViewModel.swift
//  Cloudy
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsTemperatureViewModel {
    
    let temperatureNotation: TemperatureNotation
    
    var text: String {
        switch temperatureNotation {
        case .celsius:
            return "Celsius"
        case .fahrenheit:
            return "Farenheit"
        }
    }
    
    var accessoryType: UITableViewCell.AccessoryType {
        if UserDefaults.temperatureNotation() == temperatureNotation {
            return.checkmark
        } else {
            return .none
        }
    }
    
}

extension SettingsTemperatureViewModel: SettingsRepresentable {}
