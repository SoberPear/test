//
//  MainInteractor.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation

protocol MainInteractorInput: AnyObject {
    func viewDidLoad()
    func viewWillAppear()
    func getData(data: [Episode])
}

final class MainInteractor {
    var networkOutput: NetworkOutputDelegate?
    private var presenter: MainPresenterInput
    private var router: MainRouterInput
    weak var output: MainModuleOutput?
    
    init(presenter: MainPresenterInput, router: MainRouterInput) {
        self.presenter = presenter
        self.router = router
    }
    
}

extension MainInteractor: MainInteractorInput {
    
    func viewDidLoad() {
        
    }
    
    func viewWillAppear() {
        
    }
    
    func getData(data: [Episode]) {
        
    }
    
}
