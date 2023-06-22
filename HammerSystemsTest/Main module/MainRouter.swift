//
//  MainRouter.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation
import UIKit

protocol MainRouterInput: AnyObject {
    
}

final class MainRouter {
    
    weak var view: UIViewController?
    
}

extension MainRouter: MainRouterInput {
    
}
