//
//  CollectionViewCell.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .lightGray
        layer.cornerRadius = 10
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
}
