//
//  MainBuilder.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import UIKit

@objc
protocol MainModuleOutput: AnyObject {
    
}

@objc
final class MainBuilder: NSObject {
    
    @objc func make(output: MainModuleOutput? = nil) -> UIViewController {
        let presenter = MainPresenter()
        let router = MainRouter()
        let interactor = MainInteractor(presenter: presenter, router: router)
        let vc = PhoneMainViewController(interactor: interactor)
        
        router.view = vc
        presenter.view = vc
        interactor.output = output
        
        return vc
    }
    
}
