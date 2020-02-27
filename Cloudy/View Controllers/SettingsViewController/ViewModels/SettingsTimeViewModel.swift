//
//  SettingsTimeViewModel.swift
//  Cloudy
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsTimeViewModel {
    
    let timeNotation: TimeNotation
    
    var text: String {
        switch timeNotation {
        case .twelveHour:
            return "12 horas"
        case .twentyFourHour:
            return "24 horas"
        }
    }
    
    var accessoryType: UITableViewCell.AccessoryType {
        if UserDefaults.timeNotation() == timeNotation {
            return.checkmark
        } else {
            return .none
        }
    }
    
}

extension SettingsTimeViewModel: SettingsRepresentable {}
