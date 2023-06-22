//
//  PhoneBannersViewController.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation
import UIKit

protocol BannersViewControllerInput: AnyObject {
    func configure(with model: BannersViewModel)
}

final class PhoneBannersViewController: UIViewController {
    
    private var viewModel: BannersViewModel?
    private var interactor: BannersInteractorInput
    
    init(interactor: BannersInteractorInput) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        interactor.viewWillAppear()
    }
    
}

extension PhoneBannersViewController: BannersViewControllerInput {
     
    func configure(with model: BannersViewModel) {
        
    }
    
}
