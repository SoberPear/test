//
//  MenuInteractor.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation

protocol MenuInteractorInput: AnyObject {
    func viewDidLoad()
    func viewWillAppear()
}

final class MenuInteractor {
    
    private var presenter: MenuPresenterInput
    private var router: MenuRouterInput
    weak var output: MenuModuleOutput?
    
    init(presenter: MenuPresenterInput, router: MenuRouterInput) {
        self.presenter = presenter
        self.router = router
    }
    
}

extension MenuInteractor: MenuInteractorInput {
    
    func viewDidLoad() {
        
    }
    
    func viewWillAppear() {
        
    }
    
}
