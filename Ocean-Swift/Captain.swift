//
//  Captain.swift
//  Ocean-Swift
//
//  Created by Nicholas Fung on 2017-11-07.
//  Copyright © 2017 com.lighthouse-labs. All rights reserved.
//

import UIKit

enum CaptainKind {
    case Normal, Drunk
}

struct Captain: CaptainDelegate {

    struct CaptainType {
        static let Normal = CaptainKind.Normal
        static let Drunk = CaptainKind.Drunk
    }
    
    var captainType:CaptainKind
    
    
    init(captainType: CaptainKind) {
        self.captainType = captainType
    }
    
    func goFish(_ ocean: Ocean, depth: Int, tile: Int) -> Fish? {
        if captainType == CaptainKind.Drunk {
            return nil
        }
        return ocean.fishAt(depth: depth, tile: tile)
    }
}
