//
//  ClvSlideCell.swift
//  CustomerCare_Base
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import UIKit
import CustomControl_Lib

class ClvSlideCell: UICollectionViewCell {

    // MARK: - Outlet
    @IBOutlet weak var lblName: UILabel!
    
    // MARK: - Private properties
    
    // MARK: - Properties
    
    // MARK: - Init
    
    // MARK: - UICollectionView func
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Func
    func updateCell(slideMenuItem: SlideMenuItem) {
        lblName.text = slideMenuItem.name
    }
    
    // MARK: - Layout UI
    
    // MARK: - Event Listerner
    
    // MARK: - Event Handler
    
}
