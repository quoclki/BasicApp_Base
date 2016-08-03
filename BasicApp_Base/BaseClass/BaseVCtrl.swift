//
//  BaseVCtrl.swift
//  CustomerCare_Base
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import Foundation
import UIKit

public class BaseVCtrl: UIViewController {
    
    // MARK: - Properties
//    var moduleIndexPath: NSIndexPath?
    
    // MARK: - Init
    public init() {
        super.init(nibName: String(self.dynamicType), bundle: NSBundle(forClass: self.dynamicType))
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - UIViewController func
    public override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        loadData()
        eventListener()
    }
    
    public override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        configUIViewWillAppear()
    }
    
    // MARK: - Func
    public func loadData() {
        
    }
    
    public func toggleDisplaySlideMenu() {
//        Base.baseVCtrlDelegate?.toggleSlideMenu()
    }
    
    // MARK: - Layout UI
    public func configUI() {
        
    }
    
    public func configUIViewWillAppear() {
//        Base.baseVCtrlDelegate?.highLightSelectedCell(moduleIndexPath)
    }
    
    // MARK: - Event Listener
    public func eventListener() {
        
    }
    
}

