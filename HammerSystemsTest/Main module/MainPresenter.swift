//
//  MainPresenter.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation

protocol MainPresenterInput: AnyObject {
    func showInitial()
}

final class MainPresenter {
    
    weak var view: MainViewControllerInput?
    
}

extension MainPresenter: MainPresenterInput {
    
    func showInitial() {
        let model = MainViewModel(cellModels: [
            CityTableViewModel(cities: ["Moscow", "Prague", "Tokyo"])
        ])
        view?.configure(with: model)
    }
    
}
