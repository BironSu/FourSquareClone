//
//  ListCollectionViewCell.swift
//  FourSquareClone
//
//  Created by Ramu on 2/11/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        layer.cornerRadius = 10
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
