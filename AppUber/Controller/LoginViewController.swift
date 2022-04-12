//
//  LoginController.swift
//  AppUber
//  Copyright © 2022 Leticia de Oliveira Speda. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: - Properties
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "UBER"
        label.font = UIFont(name: "Avenir-Light", size: 36)
        label.textColor = UIColor(white: 1, alpha: 0.8)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    func commonInit() {
        configureHierarchy()
        configureStyle()
        configureConstraints()
    }
    
    func configureHierarchy() {
        view.addSubview(titleLabel)
    }
    
    func configureStyle() {
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        navigationController?.navigationBar.isHidden = true
        
        navigationController?.navigationBar.barStyle = .black
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
//        setNeedsStatusBarAppearanceUpdate()
    }
}
