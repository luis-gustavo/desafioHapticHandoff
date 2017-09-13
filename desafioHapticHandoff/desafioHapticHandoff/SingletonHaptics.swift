//
//  SingletonHaptics.swift
//  desafioHapticHandoff
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 13/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

struct Haptic {
    var name: HapticType
    var description: String
}

class SingletonHaptic{
    var allHaptics = [Haptic]()
    
    static let sharedIntance = SingletonHaptic()
    
    private init() {
        
    }
}
