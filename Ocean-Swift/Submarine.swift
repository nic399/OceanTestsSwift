//
//  Submarine.swift
//  Ocean-Swift
//
//  Created by Nicholas Fung on 2017-11-07.
//  Copyright © 2017 com.lighthouse-labs. All rights reserved.
//

import UIKit

protocol CaptainDelegate {
    func goFish(_ ocean:Ocean, depth: Int, tile: Int) -> Fish?
}

class Submarine {
    
    var depth:Int = 0
    var tile:Int = 0
    var captainDelegate: CaptainDelegate?
    var cargo:[Fish] = []
    
    
    
    
    func dive() {
        if depth == Ocean.kSURFACE {
            depth = Ocean.kSURFACE + 1
        }
    }

    func surface() {
        if depth == Ocean.kSURFACE + 1 {
            depth = Ocean.kSURFACE
        }
    }
    
    func descend() {
        if depth > Ocean.kSURFACE && depth < Ocean.kMAX_DEPTH {
            depth += 1
        }
    }
    
    func ascend() {
        if depth > Ocean.kSURFACE + 1 {
            depth -= 1
        }
    }
    
    func forward() {
        if depth > Ocean.kSURFACE && tile < Ocean.kMAX_TILE {
            tile += 1
        }
    }
    
    func backwards() {
        if depth > Ocean.kSURFACE && tile > Ocean.kSURFACE {
            tile -= 1
        }
    }
    
    func goFish(_ ocean:Ocean, depth: Int, tile: Int) -> Fish? {
        let fish = (captainDelegate?.goFish(ocean, depth: depth, tile: tile))
        if fish != nil {
            cargo += [fish!]
        }
        return fish
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
