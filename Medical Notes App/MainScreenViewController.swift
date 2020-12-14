//
//  ViewController.swift
//  Medical Notes App
//
//  Created by Arystan on 12/14/20.
//

import UIKit
class MainScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let signupButton = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        signupButton.setTitle("Create Account", for: .normal)
        signupButton.setTitleColor(.white, for: .normal)
//        signupButton.titleLabel?.font = UIFont(name: "", size: <#T##CGFloat#>)
        signupButton.layer.cornerRadius = 15
        signupButton.layer.borderWidth = 1
        signupButton.layer.borderColor = #colorLiteral(red: 0.4196078431, green: 0.2823529412, blue: 1, alpha: 1)
        signupButton.addTarget(self, action: #selector(onButtonPressed(_:)), for: .touchUpInside)
        signupButton.backgroundColor = #colorLiteral(red: 0.4196078431, green: 0.2823529412, blue: 1, alpha: 1)
        
        let loginButton = UIButton(frame: CGRect(x: 300, y: 300, width: 200, height: 200))
        loginButton.setTitle("Sign In", for: .normal)
        loginButton.setTitleColor(#colorLiteral(red: 0.4196078431, green: 0.2823529412, blue: 1, alpha: 1), for: .normal)
        loginButton.backgroundColor = .white
        loginButton.layer.cornerRadius = 15
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = #colorLiteral(red: 0.4196078431, green: 0.2823529412, blue: 1, alpha: 1)
        loginButton.addTarget(self, action: #selector(onButtonPressed(_:)), for: .touchUpInside)
        
        let logoImage = UIImage(named: "logo")
        
        let imageView = UIImageView()
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.image = logoImage
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(imageView)
        imageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        stackView.addArrangedSubview(signupButton)
        signupButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        signupButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        stackView.addArrangedSubview(loginButton)
        loginButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.view.addSubview(stackView)
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    private func setupLayout() {
        
    }
    
    @objc
    func onButtonPressed(_ sender: UIButton) {
        if sender.titleLabel!.text == "Create Account" {
            let signupVC = SignupScreenViewController()
            self.navigationController?.pushViewController(signupVC, animated: true)
        } else if sender.titleLabel!.text == "Sign In" {
            let loginVC = LoginScreenViewController()
            self.navigationController?.pushViewController(loginVC, animated: true)
        }
    }
    
}

