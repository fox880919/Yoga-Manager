//
//  MainViewModel.swift
//  Yoga Manager
//
//  Created by Fayez Altamimi on 27/03/2018.
//  Copyright © 2018 Fayez Altamimi. All rights reserved.
//

import Foundation

class MainViewModel
{
    func getGroups() -> [Group]{
        
       let groups = coreDataHelper.getEntity(entityName: "Group") as! [Group]
        
        return groups
    }
    
    func addGroup(group: Group){
        
        var attributes = [String : Any]()
        
        attributes["name"] = group.name
                
        coreDataHelper.createNewEntity(entityName: "Group", attributes: attributes)
    }
    
}
