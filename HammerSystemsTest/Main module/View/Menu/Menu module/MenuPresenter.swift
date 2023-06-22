//
//  MenuPresenter.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation

protocol MenuPresenterInput: AnyObject {
    
}

final class MenuPresenter {
    
    weak var view: MenuViewControllerInput?
    
}

extension MenuPresenter: MenuPresenterInput {
    
}
