//
//  SignupScreenViewController.swift
//  Medical Notes App
//
//  Created by Arystan on 12/15/20.
//

import UIKit

class SignupScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    lazy var signupStackView: UIStackView = {
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
        label.text = "Join our healthy \ncommunity!"
        label.textColor = #colorLiteral(red: 0.05098039216, green: 0.2470588235, blue: 0.4039215686, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.numberOfLines = 2
        return label
    }()
    
    lazy var fullnameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Full Name"
        label.textColor = #colorLiteral(red: 0.05098039216, green: 0.2470588235, blue: 0.4039215686, alpha: 1)
        return label
    }()
    
    lazy var fullnameTextField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.placeholder = "Your given name"
        return field
    }()
    
    lazy var fullnameView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15
        view.layer.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        return view
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.textColor = #colorLiteral(red: 0.05098039216, green: 0.2470588235, blue: 0.4039215686, alpha: 1)
        return label
    }()

    lazy var emailTextField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.placeholder = "E.g: yourname@email.com"
        return field
    }()
    
    lazy var emailView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15
        view.layer.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        return view
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        label.textColor = #colorLiteral(red: 0.05098039216, green: 0.2470588235, blue: 0.4039215686, alpha: 1)
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.isSecureTextEntry = true
        field.placeholder = "6-12 characters"
        return field
    }()
    
    lazy var passwordView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15
        view.layer.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        return view
    }()
    
    lazy var signupButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.4196078431, green: 0.2823529412, blue: 1, alpha: 1)
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.cornerRadius = 15
        return button
    }()

    // MARK: - Setting Views
    private func setupViews() {
        self.view.backgroundColor = .white
        self.navigationItem.title = "Create account"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.05098039216, green: 0.2470588235, blue: 0.4039215686, alpha: 1)]
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.layer.cornerRadius = 15
        self.navigationController?.navigationBar.clipsToBounds = true
        self.navigationController?.navigationBar.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        
        let backButton = UIBarButtonItem()
        backButton.title = ""
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
        
//        shadow
//        self.navigationController?.navigationBar.layer.masksToBounds = false
//        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
//        self.navigationController?.navigationBar.layer.shadowOpacity = 0.8
//        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        self.navigationController?.navigationBar.layer.shadowRadius = 2
        
        self.view.addSubview(signupStackView)
        fullnameView.addSubview(fullnameLabel)
        fullnameLabel.addSubview(fullnameTextField)
        emailView.addSubview(emailLabel)
        emailView.addSubview(emailTextField)
        passwordView.addSubview(passwordLabel)
        passwordView.addSubview(passwordTextField)
        signupStackView.addArrangedSubview(imageView)
        signupStackView.addArrangedSubview(welcomeText)
        signupStackView.addArrangedSubview(fullnameView)
        signupStackView.addArrangedSubview(emailView)
        signupStackView.addArrangedSubview(passwordView)
        signupStackView.addArrangedSubview(signupButton)
    }
    
    // MARK: - Setting Constraints
    private func setupConstraints() {
        signupStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        signupStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signupStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        signupStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        fullnameView.leadingAnchor.constraint(equalTo: signupStackView.leadingAnchor).isActive = true
        fullnameView.trailingAnchor.constraint(equalTo: signupStackView.trailingAnchor).isActive = true
        
        fullnameLabel.topAnchor.constraint(equalTo: fullnameView.topAnchor, constant: 10).isActive = true
        fullnameLabel.leadingAnchor.constraint(equalTo: fullnameView.leadingAnchor, constant: 20).isActive = true
        fullnameLabel.trailingAnchor.constraint(equalTo: fullnameView.trailingAnchor, constant: -25).isActive = true
        fullnameLabel.bottomAnchor.constraint(equalTo: fullnameLabel.bottomAnchor, constant: -35).isActive = true
        
        fullnameTextField.topAnchor.constraint(equalTo: fullnameView.topAnchor, constant: 35).isActive = true
        fullnameTextField.leadingAnchor.constraint(equalTo: fullnameView.leadingAnchor, constant: 20).isActive = true
        fullnameTextField.trailingAnchor.constraint(equalTo: fullnameView.trailingAnchor, constant: -25).isActive = true
        fullnameTextField.bottomAnchor.constraint(equalTo: fullnameView.bottomAnchor, constant: -10).isActive = true
        
        emailView.leadingAnchor.constraint(equalTo: signupStackView.leadingAnchor).isActive = true
        emailView.trailingAnchor.constraint(equalTo: signupStackView.trailingAnchor).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 10).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 20).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: -25).isActive = true
        emailLabel.bottomAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: -35).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 35).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: -25).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: emailView.bottomAnchor, constant: -10).isActive = true
        
        passwordView.leadingAnchor.constraint(equalTo: signupStackView.leadingAnchor).isActive = true
        passwordView.trailingAnchor.constraint(equalTo: signupStackView.trailingAnchor).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 10).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 20).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -25).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: -35).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 35).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -25).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: -10).isActive = true
        
        signupButton.leadingAnchor.constraint(equalTo: signupStackView.leadingAnchor).isActive = true
        signupButton.trailingAnchor.constraint(equalTo: signupStackView.trailingAnchor).isActive = true
        signupButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
    }
}
