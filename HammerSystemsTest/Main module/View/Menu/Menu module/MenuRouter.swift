//
//  MenuRouter.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation
import UIKit

protocol MenuRouterInput: AnyObject {
    
}

final class MenuRouter {
    
    weak var view: UIViewController?
    
}

extension MenuRouter: MenuRouterInput {
    
}
