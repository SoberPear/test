//
//  PhoneMenuViewController.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation
import UIKit

protocol MenuViewControllerInput: AnyObject {
    func configure(with model: MenuViewModel)
}

final class PhoneMenuViewController: UIViewController {
    
    private var viewModel: MenuViewModel?
    private var interactor: MenuInteractorInput
    
    init(interactor: MenuInteractorInput) {
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

extension PhoneMenuViewController: MenuViewControllerInput {
     
    func configure(with model: MenuViewModel) {
        
    }
    
}
