//
//  CityTableViewCell.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//

import UIKit

class CityTableViewCell: CustomUITableViewCell {
    
    private lazy var label: UILabel = {
        return UILabel()
    }()
    
    override func configure(with model: CustomUITableViewCellModel) {
        guard let model = model as? CityTableViewModel else { return }
        label.text = model.cities.first
    }
    
}
