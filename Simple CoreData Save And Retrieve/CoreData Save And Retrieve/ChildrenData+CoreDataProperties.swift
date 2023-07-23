//
//  ChildrenData+CoreDataProperties.swift
//  CoreData Save And Retrieve
//
//  Created by Sainath Bamen on 23/06/23.
//
//

import Foundation
import CoreData


extension ChildrenData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ChildrenData> {
        return NSFetchRequest<ChildrenData>(entityName: "ChildrenData")
    }

    @NSManaged public var childname: String?

}

extension ChildrenData : Identifiable {

}
