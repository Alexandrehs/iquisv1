//
//  ViewController.swift
//  Iquiz
//
//  Created by Alexandre Henrique da Silva on 08/11/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var logoImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: AssetsConstants.logo))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var initButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Iniciar Quiz", for: .normal)
        button.backgroundColor = UIColor(named: AssetsConstants.secondBackgroundColor)
        button.titleLabel?.font = .systemFont(ofSize: 24.0, weight: .bold)
        button.layer.cornerRadius = 12.0
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: AssetsConstants.primaryBackgroundColor)
        setupSubViews()
        setupConstraints()
    }

    private func setupSubViews() {
        view.addSubview(logoImage)
        view.addSubview(initButton)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 240),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            initButton.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 25),
            initButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            initButton.heightAnchor.constraint(equalToConstant: 80),
            initButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
}

#Preview {
    HomeViewController()
}
