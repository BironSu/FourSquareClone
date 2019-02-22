//
//  CreateView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class CreateView: UIView {

    lazy var dismissButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.init(white: 1.0, alpha: 0.5)
        return button
    }()
    lazy var createButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.setTitle("Done", for: .normal)
        button.layer.cornerRadius = 10.0
        return button
    }()
    lazy var middleCreateView: UIView = {
        let midView = UIView()
        midView.backgroundColor = .white
        midView.layer.cornerRadius = 10.0
        return midView
    }()
    lazy var nameTextView: UITextField = {
        let nameTF = UITextField()
        nameTF.placeholder = "Enter List Name"
        nameTF.layer.cornerRadius = 10.0
        return nameTF
    }()
    lazy var descriptionTextView: UITextField = {
        let descriptionTF = UITextField()
        descriptionTF.placeholder = "Description"
        descriptionTF.layer.cornerRadius = 10.0
        return descriptionTF
    }()
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit(){
        setupConstraints()
    }
}

extension CreateView {
    private func setupConstraints(){
        setupDismissButton()
        setupMiddleView()
        setupNameText()
        setupDescriptionText()
        setupCreateButton()
    }
    private func setupDismissButton() {
        addSubview(dismissButton)
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            dismissButton.widthAnchor.constraint(equalTo: self.widthAnchor),
            dismissButton.heightAnchor.constraint(equalTo: self.heightAnchor)
            ])
    }
    private func setupMiddleView() {
        addSubview(middleCreateView)
        middleCreateView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            middleCreateView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            middleCreateView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            middleCreateView.heightAnchor.constraint(equalToConstant: 350),
            middleCreateView.widthAnchor.constraint(equalToConstant: 350)
            ])
    }
    private func setupNameText() {
        addSubview(nameTextView)
        nameTextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameTextView.heightAnchor.constraint(equalToConstant: 40),
            nameTextView.leadingAnchor.constraint(equalTo: middleCreateView.leadingAnchor, constant: 20),
            nameTextView.trailingAnchor.constraint(equalTo: middleCreateView.trailingAnchor, constant: -20),
            nameTextView.topAnchor.constraint(equalTo: middleCreateView.topAnchor, constant: 80)
            ])
    }
    private func setupDescriptionText() {
        addSubview(descriptionTextView)
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionTextView.heightAnchor.constraint(equalToConstant: 40),
            descriptionTextView.leadingAnchor.constraint(equalTo: middleCreateView.leadingAnchor, constant: 20),
            descriptionTextView.trailingAnchor.constraint(equalTo: middleCreateView.trailingAnchor, constant: -20),
            descriptionTextView.topAnchor.constraint(equalTo: nameTextView.bottomAnchor, constant: 40)
            ])
    }
    private func setupCreateButton() {
        addSubview(createButton)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createButton.heightAnchor.constraint(equalToConstant: 40),
            createButton.leadingAnchor.constraint(equalTo: middleCreateView.leadingAnchor, constant: 20),
            createButton.trailingAnchor.constraint(equalTo: middleCreateView.trailingAnchor, constant: -20),
            createButton.bottomAnchor.constraint(equalTo: middleCreateView.bottomAnchor, constant: -10)
            ])
    }
}
