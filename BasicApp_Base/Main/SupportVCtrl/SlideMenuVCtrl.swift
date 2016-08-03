//
//  SlideMenuVCtrl.swift
//  CustomerCare_Base
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import UIKit

class SlideMenuVCtrl: BaseVCtrl {

    // MARK: - Outlet
    @IBOutlet weak var clvSlide: UICollectionView!
    
    // MARK: - Private properties
    private var clvSlideSource: ClvSlideSource!
    
    // MARK: - Properties
    
    // MARK: - Init

    // MARK: - UIViewController func
    
    // MARK: - Func
    override func loadData() {
        super.loadData()
    }
    
    // MARK: - Layout UI
    override func configUI() {
        super.configUI()
        Base.slideMenuDelegate = self
    
        clvSlideSource = ClvSlideSource(clv: clvSlide)
        
        //set for dynamic Screen
//        let clvItemSize = CGSize(width: view.frame.width, height: 50)
//        let layout = CollectionViewLayout(size: clvItemSize)
//        clvSlide.setCollectionViewLayout(layout, animated: true)
        
        setFrameForView()
    }
    
    func setFrameForView() {
        view.frame.origin.x = -view.frame.width
    }
    
    override func configUIViewWillAppear() {
        super.configUIViewWillAppear()
        
    }
    
    // MARK: - Event Listerner
    override func eventListener() {
        super.eventListener()
        
    }
    
    // MARK: - Event Handler
    
    
    
}

extension SlideMenuVCtrl: ClvSlideMenuDelegate {
    func showSlideMenu(status: Bool) {
        if status {
            let x = self.view.origin.x
            
            if x == 0 { //SlideMenu is hidden
                Base.navCtrl.view.userInteractionEnabled = true
                UIView.animateWithDuration(0.3, animations: {
                    self.view.frame.origin.x = -self.view.frame.width
                })
                
            } else { //SlideMenu is show
                Base.navCtrl.view.userInteractionEnabled = false
                UIView.animateWithDuration(0.3, animations: {
                    self.view.frame.origin.x = 0
                })
            }
        }
    }
}
