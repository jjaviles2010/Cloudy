//
//  SettingsRepresentable.swift
//  Cloudy
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import UIKit

protocol SettingsRepresentable {
    var text: String {get}
    var accessoryType: UITableViewCell.AccessoryType {get}
}
