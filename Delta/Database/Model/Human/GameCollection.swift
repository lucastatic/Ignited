//
//  GameCollection.swift
//  Delta
//
//  Created by Riley Testut on 11/1/15.
//  Copyright © 2015 Riley Testut. All rights reserved.
//

import CoreData

import DeltaCore
import Harmony

@objc(GameCollection)
public class GameCollection: _GameCollection
{
    var name: String {
        return self.system?.localizedName ?? NSLocalizedString("Unknown", comment: "")
    }
    
    var shortName: String {
        return self.system?.localizedShortName ?? NSLocalizedString("Unknown", comment: "")
    }
    
    var system: System? {
        let gameType = GameType(rawValue: self.identifier)
        
        let system = System(gameType: gameType)
        return system
    }
}

extension GameCollection: Syncable
{
    public static var syncablePrimaryKey: AnyKeyPath {
        return \GameCollection.identifier
    }
    
    public var syncableKeys: Set<AnyKeyPath> {
        return [\GameCollection.index as AnyKeyPath]
    }
}
