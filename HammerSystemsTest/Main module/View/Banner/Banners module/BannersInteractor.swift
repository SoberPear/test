//
//  BannersInteractor.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation

protocol BannersInteractorInput: AnyObject {
    func viewDidLoad()
    func viewWillAppear()
}

final class BannersInteractor {
    
    private var presenter: BannersPresenterInput
    private var router: BannersRouterInput
    weak var output: BannersModuleOutput?
    
    init(presenter: BannersPresenterInput, router: BannersRouterInput) {
        self.presenter = presenter
        self.router = router
    }
    
}

extension BannersInteractor: BannersInteractorInput {
    
    func viewDidLoad() {
        
    }
    
    func viewWillAppear() {
        
    }
    
}
