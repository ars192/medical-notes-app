//
//  SignupScreenViewController.swift
//  Medical Notes App
//
//  Created by Arystan on 12/15/20.
//

import UIKit

class SignupScreenViewController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        
        let logoImage = UIImage(named: "logo")
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.image = logoImage
        
        let signupLabel = UILabel()
        signupLabel.translatesAutoresizingMaskIntoConstraints = false
        signupLabel.text = "Join our healthy\n healthy community"
        signupLabel.numberOfLines = 2
        signupLabel.textColor = #colorLiteral(red: 0.05098039216, green: 0.2470588235, blue: 0.4039215686, alpha: 1)
        signupLabel.font = UIFont.boldSystemFont(ofSize: 36)
        
        let fullNameLabel = UILabel()
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.text = "Full Name"
        
        let fullNameTextField = UITextField()
        fullNameTextField.translatesAutoresizingMaskIntoConstraints = false
        fullNameTextField.placeholder = "Your given name"
        
        let fullNameStackView = UIStackView(arrangedSubviews: [fullNameLabel, fullNameTextField])
        fullNameStackView.translatesAutoresizingMaskIntoConstraints = false
        fullNameStackView.layer.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        fullNameStackView.layer.cornerRadius = 15
        fullNameStackView.layer.borderWidth = 1
        fullNameStackView.axis = .vertical
        fullNameStackView.spacing = 10
        
        let emailLabel = UILabel()
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = "Full Name"
        
        let emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "Your given name"
        
        let emailStackView = UIStackView(arrangedSubviews: [fullNameLabel, fullNameTextField])
        emailStackView.translatesAutoresizingMaskIntoConstraints = false
        emailStackView.layer.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        emailStackView.layer.cornerRadius = 15
        emailStackView.layer.borderWidth = 1
        
        let signupStackView = UIStackView()
        
        signupStackView.axis = .vertical
        signupStackView.spacing = 50
        signupStackView.translatesAutoresizingMaskIntoConstraints = false
//        signupStackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        signupStackView.heightAnchor.constraint(equalToConstant: 900).isActive = true
        
        signupStackView.addArrangedSubview(imageView)
        
        signupStackView.addArrangedSubview(signupLabel)
        
        signupStackView.addArrangedSubview(fullNameStackView)
        fullNameStackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        fullNameStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        signupStackView.addArrangedSubview(emailStackView)
        
        //breakpoint?
        self.view.addSubview(signupStackView)
        signupStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        signupStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signupStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        signupStackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}
