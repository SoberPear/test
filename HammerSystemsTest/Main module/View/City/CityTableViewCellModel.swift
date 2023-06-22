//
//  CityTableViewCellModel.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//

import Foundation

class CityTableViewModel: CustomUITableViewCellModel {
    
    init(cities: [String]) {
        self.cities = cities
    }
    
    let cities: [String]
    
}
