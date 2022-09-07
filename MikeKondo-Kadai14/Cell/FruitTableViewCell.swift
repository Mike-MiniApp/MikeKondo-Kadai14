//
//  FruitTableViewCell.swift
//  MikeKondo-Kadai14
//
//  Created by 近藤米功 on 2022/09/06.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    // MARK: - UI Parts
    @IBOutlet private weak var checkImageView: UIImageView!
    @IBOutlet private weak var fruitNameLabel: UILabel!

    static let identifier = "fruitCell"
    static let nibName = "FruitTableViewCell"

    func configure(fruit: Fruit) {
        fruitNameLabel.text = fruit.name
        checkImageView.isHidden = !fruit.isCheck
    }
}
