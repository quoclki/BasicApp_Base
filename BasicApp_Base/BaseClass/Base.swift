//
//  Base.swift
//  CustomerCare_Base
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import Foundation

public class Base: NSObject {
    static var sessionID: String = ""
    static var userID: String = ""
    
    public static var ratioHeight: CGFloat = 1
    public static var ratioWidth: CGFloat = 1
    public static var frameScreen: CGRect!
    public static var sizeScreen: CGSize!
    public static var keyboardHeight: CGFloat = 162 //iPhone 6s
    
    public static var navCtrl: UINavigationController!
    public static var dbContext = DBController().managedObjectContext
    public static var slideMenuData: [SlideMenuItem] = []
    public static var slideMenuDelegate: ClvSlideMenuDelegate?
}

public class SlideMenuItem {
    public var id: String!
    public var name: String!
    public var viewController: UIViewController!
    public var isActive: Bool!
    public var isView: Bool!
    public var isAction: Bool!
    
    public init() {}
}

public class CollectionViewLayout : UICollectionViewFlowLayout {
    public init(size : CGSize, itemSpacing: CGFloat = 0, scrollType: UICollectionViewScrollDirection = .Vertical) {
        super.init()
        itemSize.height = size.height * Base.ratioHeight
        itemSize.width = size.width * Base.ratioWidth
        minimumLineSpacing = 0
        minimumInteritemSpacing = itemSpacing * Base.ratioWidth
        //sectionInset = UIEdgeInsets(top: 0, left: 50 * EmployeeBaseVCtrl.ratioWidth, bottom: 0, right: 50 * EmployeeBaseVCtrl.ratioWidth)
        scrollDirection = scrollType
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}