//
//  MainVCtrl.swift
//  CustomerCare_Base
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import UIKit

class MainVCtrl: BaseVCtrl {

    // MARK: - Outlet
    @IBOutlet weak var btnMenu: UIButton!
    
    // MARK: - Private properties
    private var slideMenuVCtrl: UIViewController!
    
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
    }
    
    override func configUIViewWillAppear() {
        super.configUIViewWillAppear()
        
    }
    
    // MARK: - Event Listerner
    override func eventListener() {
        super.eventListener()
        btnMenu.touchUpInside({self.btnMenu_Touch($0)})
    }
    
    // MARK: - Event Handler
    func btnMenu_Touch(sender: UIButton){
        Base.slideMenuDelegate?.showSlideMenu(true)
    }
    
}
