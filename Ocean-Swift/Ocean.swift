//
//  Ocean.swift
//  Ocean-Swift
//
//  Created by Daniel Mathews on 2015-01-27.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

class Ocean {
    
    static let kMAX_DEPTH = 4
    static let kMAX_TILE = 5
    static let kSURFACE = 0
    
    enum FishType {
        case empty
        case tuna
        case salmon
    }
    
    // The board below represents the ocean. It's an array of tuples
    // Tuple order is (depth, tile, FishType)
    // Each tile is either .Empty or has a fish: .Salmon or .Tuna
    
    var board:[(Int,Int,FishType)] = [
        
                    /* => => Forward direction => => */
                    /* 1 2 3 4 5 # Tile Number */
        
        (1,1,.empty),(1,2,.empty),(1,3,.empty),(1,4,.salmon),(1,5,.empty), //Depth1
        (2,1,.tuna),(2,2,.salmon),(2,3,.empty),(2,4,.empty),(2,5,.salmon), //Depth2
        (3,1,.salmon),(3,2,.empty),(3,3,.empty),(3,4,.tuna),(3,5,.empty), //Depth3
        (4,1,.empty),(4,2,.empty),(4,3,.empty),(4,4,.tuna),(4,5,.empty)] //Depth4
    
                    /* => => Forward direction => => */ 
    
    
    
    func fishAt(depth:Int, tile:Int) -> Fish? {
        
        for (thisDepth, thisTile, thisFishType) in board {
            if thisDepth == depth && thisTile == tile {
                switch thisFishType {
                case .empty:
                    return nil
                case .salmon:
                    return GiantSalmon()
                case .tuna:
                    return GiantTuna()
                }
            }
        }
        return nil
    }
}
