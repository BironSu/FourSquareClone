//
//  CreateViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    let createView = CreateView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(createView)
        createView.nameTextView.delegate = self
        createView.descriptionTextView.delegate = self
        createView.createButton.addTarget(self, action: #selector(createFunc), for: .touchUpInside)
        createView.dismissButton.addTarget(self, action: #selector(dismissFunc), for: .touchUpInside)
    
    }
    // for background
    @objc private func dismissFunc() {
        dismiss(animated: true, completion: nil)
    }
    // adds to collection list
    @objc private func createFunc() {
      guard let title = createView.nameTextView.text,
        let description = createView.descriptionTextView.text,
        !title.isEmpty, !description.isEmpty else {
          showAlert(title: "", message: "All the fields must be filled.", actionTitle: "OK")
            return }
        let newCollection = VenueFolder.init(title: title, description: description)
        let savedCollection = SavedVenueModel.saveFolder(venue: newCollection)
        if let error = savedCollection.error {
          showAlert(title: "Saving error", message: "error saving \(title)", actionTitle: "\(error)")
        } else {
            showAlert(title: "", message: "collection saved successfully", actionTitle: "OK")
        }
        dismiss(animated: true, completion: nil)
    }
}
extension CreateViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.placeholder = ""
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == createView.nameTextView {
            createView.descriptionTextView.becomeFirstResponder()
        }
    }
    
    
    
}
