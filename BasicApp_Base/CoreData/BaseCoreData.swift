//
//  BaseCoreData.swift
//  CustomerCare_Base
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import Foundation
import CoreData

public class BaseCoreData: NSObject {
    public static func getData<T: NSObject>() -> [T]? {
        do {
            let request = NSFetchRequest(entityName: String(T))
            if let data = try Base.dbContext.executeFetchRequest(request) as? [T] {
                if data.count > 0 {
                    return data
                }
            }
        } catch let err as NSError {
//            nsPrint(String(err))
        }
        return nil
    }
    
    public static func saveContext() -> Bool {
        if (try? Base.dbContext.save()) == nil {
            return false
        }
        
        return true
    }
    
    public static func createObj<T: NSObject>() -> T {
        let obj = NSEntityDescription.insertNewObjectForEntityForName(String(T), inManagedObjectContext: Base.dbContext) as! T
        return obj
    }
    
}