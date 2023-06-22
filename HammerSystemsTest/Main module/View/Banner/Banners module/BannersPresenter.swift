//
//  BannersPresenter.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation

protocol BannersPresenterInput: AnyObject {
    
}

final class BannersPresenter {
    
    weak var view: BannersViewControllerInput?
    
}

extension BannersPresenter: BannersPresenterInput {
    
}
