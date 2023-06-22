//
//  PhoneMainViewController.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 10.05.2023.
//  
//

import Foundation
import UIKit

protocol MainViewControllerInput: AnyObject {
    func configure(with model: MainViewModel)
}

final class PhoneMainViewController: UIViewController {
    
    private enum Constants {
        static let backgroundColor = UIColor(red: 243, green: 245, blue: 249, alpha: 1)
        static let cityCellIdentifier = "cityCellIdentifier"
        static let bannerCellIdentifier = "bannerCellIdentifier"
        static let filterCellIdentifier = "filterCellIdentifier"
        static let menuCellIdentifier = "menuCellIdentifier"
    }
    
    // MARK: - Private properties
    private var viewModel: MainViewModel?
    private let interactor: MainInteractorInput
    
    // MARK: - UI Elements
    @IBOutlet weak var tableView: UITableView!
    
    init(interactor: MainInteractorInput) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CityTableViewCell.self, forCellReuseIdentifier: Constants.cityCellIdentifier)
        tableView.register(BannerTableViewCell.self, forCellReuseIdentifier: Constants.bannerCellIdentifier)
        tableView.register(FilterTableViewCell.self, forCellReuseIdentifier: Constants.filterCellIdentifier)
        tableView.register(MenuTableViewCell.self, forCellReuseIdentifier: Constants.menuCellIdentifier)

        view.backgroundColor = Constants.backgroundColor
        interactor.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        interactor.viewWillAppear()
    }
    
}

extension PhoneMainViewController: MainViewControllerInput {
     
    func configure(with model: MainViewModel) {
        viewModel = model
        tableView.reloadData()
    }
    
}

extension PhoneMainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else { return 0 }
        return viewModel.cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let viewModel = viewModel else { return UITableViewCell() }
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cityCellIdentifier, for: indexPath)
            guard let cell = cell as? CityTableViewCell else { return UITableViewCell() }
            cell.configure(with: viewModel.cellModels[indexPath.row])
            return cell
        case 1: ()
        case 2: ()
        case 3: ()
        default: ()
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let model = viewModel else { return }
        guard model.cellModels.count >= indexPath.row else { return }
        model.cellModels[indexPath.row].selectionHandler?()
    }
    
}
