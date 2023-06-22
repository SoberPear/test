//
//  MenuBuilder.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation
import UIKit

@objc
protocol MenuModuleOutput: AnyObject {
    
}

@objc
final class MenuBuilder: NSObject {
    
    @objc func make(output: MenuModuleOutput? = nil) -> UIViewController {
        let presenter = MenuPresenter()
        let router = MenuRouter()
        let interactor = MenuInteractor(presenter: presenter, router: router)
        let vc = PhoneMenuViewController(interactor: interactor)
        
        router.view = vc
        presenter.view = vc
        interactor.output = output
        
        return vc
    }
    
}
