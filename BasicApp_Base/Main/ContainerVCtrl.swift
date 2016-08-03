//
//  ContainerVCtrl.swift
//  CustomerCare_Base
//
//  Created by quoclki on 8/1/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import UIKit

class ContainerVCtrl: UIViewController {

    // MARK: - Outlet
    
    // MARK: - Private properties
    private var slideMenu: SlideMenuVCtrl!
    private var mainMenu: MainVCtrl!
    private var gView: UIView!
    
    private var flag = true
    
    // MARK: - Properties
    
    // MARK: - Init
    init() {
        super.init(nibName: nil, bundle: NSBundle(forClass: self.dynamicType))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UIViewController func
    override func viewDidLoad() {
        configUI()
        loadData()
        eventListener()
    }
    
    // MARK: - Func
    func loadData() {
        
    }
    
    // MARK: - Layout UI
    func configUI() {
        
        mainMenu = MainVCtrl()
        
        //set navCtrl is mainMenu
        let navCtrl = UINavigationController(rootViewController: mainMenu)
        Base.navCtrl = navCtrl
        Base.navCtrl.navigationBarHidden = true
        
        addChildViewController(Base.navCtrl)
        view.addSubview(Base.navCtrl.view)

        //slide menu in the left of mainMenu
        slideMenu = SlideMenuVCtrl()
        addChildViewController(slideMenu)
        view.addSubview(slideMenu.view)
        
        //TEST
        gView = UIView()
        view.addSubview(gView)
    }
    
    func configUIViewWillAppear() {
        
    }
    
    // MARK: - Event Listerner
    func eventListener() {
        let panGesture = UIPanGestureRecognizer()
        panGesture.minimumNumberOfTouches = 2
        panGesture.addTarget(self, action: "handlePanGesture:")
        
        Base.navCtrl.view.addGestureRecognizer(panGesture)
    }
    
    // MARK: - Event Handler
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let allowCollapsed = slideMenu.view.frame.origin.x == 0 ? true : false
        
        Base.slideMenuDelegate?.showSlideMenu(allowCollapsed)
    }
    
    func handlePanGesture(gesture: UIPanGestureRecognizer) {
        
        var location:CGFloat = slideMenu.view.frame.origin.x
        
        switch gesture.state {
        case .Began:
 //           print("Began")
            
            break
            
        case .Changed:
 //           print("Change")
            let x = gesture.translationInView(view).x
            gesture.setTranslation(CGPointZero, inView: view)

            location += x
            
            if location > -300 && location <= 0 {
                slideMenu.view.frame.origin.x = location
            }
            
            break
            
        case .Ended:
 //           print("End")
            
            UIView.animateWithDuration(0.3, animations: {
                self.slideMenu.view.frame.origin.x = location < -150 ? -300 : 0
            })
            
            break
            
        default:
            break
        }
        
        
    }


}
