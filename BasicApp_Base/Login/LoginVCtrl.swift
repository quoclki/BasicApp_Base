//
//  LoginVCtrl.swift
//  CustomerCare_Base
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import UIKit
import CustomControl_Lib

public class LoginVCtrl: BaseVCtrl {

    // MARK: - Outlet
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    // MARK: - Private properties
    
    // MARK: - Properties
    
    // MARK: - Init
    
    // MARK: - UIViewController func
    
    // MARK: - Func
    override public func loadData() {
        super.loadData()
    }
    
    // MARK: - Layout UI
    override public func configUI() {
        super.configUI()
        
    }
    
    override public func configUIViewWillAppear() {
        super.configUIViewWillAppear()
        
    }
    
    // MARK: - Event Listerner
    override public func eventListener() {
        super.eventListener()
        btnLogin.touchUpInside({self.btnLogin_Touch($0)})
    }
    
    // MARK: - Event Handler
    func btnLogin_Touch(sender: UIButton) {
        UIApplication.sharedApplication().keyWindow?.rootViewController = ContainerVCtrl()
    }
    
    
}
