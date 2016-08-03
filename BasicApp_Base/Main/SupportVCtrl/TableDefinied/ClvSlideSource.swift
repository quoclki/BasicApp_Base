//
//  ClvSlideSource.swift
//  CustomerCare_Base
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import UIKit

class ClvSlideSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate{

    var slideMenuData: [SlideMenuItem] = []
    var cellID = "clvSlideMenuCellID"
    
    init(clv: UICollectionView) {
        super.init()
        clv.registerNib(UINib(nibName: String(ClvSlideCell), bundle: NSBundle(forClass: self.dynamicType)), forCellWithReuseIdentifier: cellID)
        self.slideMenuData = Base.slideMenuData
        clv.dataSource = self
        clv.delegate = self
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slideMenuData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellID, forIndexPath: indexPath) as! ClvSlideCell
        cell.updateCell(slideMenuData[indexPath.row])
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let viewController = slideMenuData[indexPath.row].viewController
        Base.navCtrl.popToRootViewControllerAnimated(false)
        Base.navCtrl.pushViewController(viewController, animated: true)
        
        Base.slideMenuDelegate?.showSlideMenu(true)
    }
}

