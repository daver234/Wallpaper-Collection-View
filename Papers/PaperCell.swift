//
//  PaperCell.swift
//  Papers
//
//  Created by David Rothschild on 4/11/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class PaperCell: UICollectionViewCell {
    
    @IBOutlet private weak var paperImageView: UIImageView!
    @IBOutlet private var captionLabel: UILabel!
    @IBOutlet private weak var gradientView: GradientView!
    
    var paper: Paper? {
        didSet {
            if let paper = paper {
                paperImageView.image = UIImage(named: paper.imageName)
                captionLabel.text = paper.caption
            }
        }
    }
    
}
