//
//  SignInViewViewController.swift
//  CareGiver
//
//  Created by Bassey Duke on 5/15/20.
//  Copyright © 2020 CareGiver. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    let logInButton = UIButton()
    let signUpButton = UIButton()
    let footer =  "footerId"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    func setupButtons(){
        logInButton.backgroundColor = .systemPink
        logInButton.setTitleColor(.black, for: .normal)
        logInButton.setTitle("Log In", for: .normal)
        
        signUpButton.backgroundColor = .systemPink
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.setTitle("Sign Up", for: .normal)
        
        
        
        
        logInButton.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        
        view.addSubview(logInButton)
        view.addSubview(signUpButton)
        setButtonConstraints()
    }
    
    //TODO Change the target of the log in button to the LogIn View Controller
    @objc func logInButtonTapped(){
        let logInView = HomeViewController()
        logInView.title = "Home"
        navigationController?.pushViewController(logInView, animated: true)
    }
    
    //TODO Change the target of the sign up button to the SignUp View Controller
    @objc func signUpButtonTapped(){
        let createAccountView = HomeViewController()
        createAccountView.title = "Home"
        navigationController?.pushViewController(createAccountView, animated: true)
    }
    
    
    func setButtonConstraints(){
        
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60).isActive = true
        
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}