//
//  BannersBuilder.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation
import UIKit

@objc
protocol BannersModuleOutput: AnyObject {
    
}

@objc
final class BannersBuilder: NSObject {
    
    @objc func make(output: BannersModuleOutput? = nil) -> UIViewController {
        let presenter = BannersPresenter()
        let router = BannersRouter()
        let interactor = BannersInteractor(presenter: presenter, router: router)
        let vc = PhoneBannersViewController(interactor: interactor)
        
        router.view = vc
        presenter.view = vc
        interactor.output = output
        
        return vc
    }
    
}
