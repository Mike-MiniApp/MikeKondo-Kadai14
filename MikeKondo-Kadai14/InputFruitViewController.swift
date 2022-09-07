//
//  InputFruitViewController.swift
//  MikeKondo-Kadai14
//
//  Created by 近藤米功 on 2022/08/31.
//

import UIKit

protocol InputFruitViewControllerDelegate: AnyObject {
    func didSaveFruit(name: String)
}

class InputFruitViewController: UIViewController {
    // MARK: - UI Parts
    @IBOutlet private weak var fruitNameTextField: UITextField!

    var delegate: InputFruitViewControllerDelegate?

    @IBAction private func didTapSaveFruitButton(_ sender: Any) {
        guard let fruitName = fruitNameTextField.text else { return }
        delegate?.didSaveFruit(name: fruitName)
        dismiss(animated: true)
    }

    @IBAction private func didTapCancelButton(_ sender: Any) {
       dismiss(animated: true)
    }
}
