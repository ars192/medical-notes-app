//
//  LoginScreenViewController.swift
//  Medical Notes App
//
//  Created by Arystan on 12/15/20.
//

import UIKit

class LoginScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    lazy var loginStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 20
        stack.alignment = .leading
        stack.distribution = .fill
        return stack
        
    }()
    
    lazy var logoImage: UIImage = {
        let image = UIImage(named: "logo")
        return image!                       //unsafe
    }()
    
    lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = logoImage
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var welcomeText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome \nback!"
        label.textColor = #colorLiteral(red: 0.05098039216, green: 0.2470588235, blue: 0.4039215686, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.numberOfLines = 2
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var emailView: UIView = {
        let stack = UIView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.layer.cornerRadius = 15
        stack.layer.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9529411765, blue: 0.9647058824, alpha: 1)

        return stack
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var passwordView: UIView = {
        let stack = UIView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.layer.cornerRadius = 15
        stack.layer.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        return stack
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.4196078431, green: 0.2823529412, blue: 1, alpha: 1)
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.cornerRadius = 15
        return button
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot Password?", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(#colorLiteral(red: 0.05098039216, green: 0.2470588235, blue: 0.4039215686, alpha: 1), for: .normal)
        return button
    }()

    // MARK: - Setting Views
    private func setupViews() {
        self.view.backgroundColor = .white
        self.navigationItem.title = "Sign in"
        self.navigationController?.navigationBar.layer.cornerRadius = 15
        self.navigationController?.navigationBar.clipsToBounds = true
        self.navigationController?.navigationBar.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        self.navigationController?.navigationBar.backgroundColor = .white
        
        let backButton = UIBarButtonItem()
        backButton.title = ""
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
        
//        shadow
//        self.navigationController?.navigationBar.layer.masksToBounds = false
//        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
//        self.navigationController?.navigationBar.layer.shadowOpacity = 0.8
//        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        self.navigationController?.navigationBar.layer.shadowRadius = 2
        
        self.view.addSubview(loginStackView)
        emailView.addSubview(emailLabel)
        emailView.addSubview(emailTextField)
        passwordView.addSubview(passwordLabel)
        passwordView.addSubview(passwordTextField)
        loginStackView.addArrangedSubview(imageView)
        loginStackView.addArrangedSubview(welcomeText)
        loginStackView.addArrangedSubview(emailView)
        loginStackView.addArrangedSubview(passwordView)
        loginStackView.addArrangedSubview(loginButton)
        loginStackView.addArrangedSubview(forgotPasswordButton)
    }
    
    // MARK: - Setting Constraints
    private func setupConstraints() {
        loginStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        loginStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        emailView.leadingAnchor.constraint(equalTo: loginStackView.leadingAnchor).isActive = true
        emailView.trailingAnchor.constraint(equalTo: loginStackView.trailingAnchor).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 10).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 20).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: -25).isActive = true
        emailLabel.bottomAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: -35).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 35).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: -25).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: emailView.bottomAnchor, constant: -10).isActive = true
        
        passwordView.leadingAnchor.constraint(equalTo: loginStackView.leadingAnchor).isActive = true
        passwordView.trailingAnchor.constraint(equalTo: loginStackView.trailingAnchor).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 10).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 20).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -25).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: -35).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 35).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -25).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: -10).isActive = true
        
        loginButton.leadingAnchor.constraint(equalTo: loginStackView.leadingAnchor).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: loginStackView.trailingAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        forgotPasswordButton.leadingAnchor.constraint(equalTo: loginStackView.leadingAnchor, constant: 100).isActive = true
        forgotPasswordButton.trailingAnchor.constraint(equalTo: loginStackView.trailingAnchor, constant: -100).isActive = true
    }

}
