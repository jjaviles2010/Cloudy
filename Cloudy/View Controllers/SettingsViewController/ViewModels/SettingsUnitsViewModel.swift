//
//  SettingsUnitsViewModel.swift
//  Cloudy
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsUnitsViewModel {
    
    let unitsNotation: UnitsNotation
    
    var text: String {
        switch unitsNotation {
        case .imperial:
            return "Imperial"
        case .metric:
            return "Métrico"
        }
    }
    
    var accessoryType: UITableViewCell.AccessoryType {
        if UserDefaults.unitsNotation() == unitsNotation {
            return.checkmark
        } else {
            return .none
        }
    }
    
}

extension SettingsUnitsViewModel: SettingsRepresentable {}
