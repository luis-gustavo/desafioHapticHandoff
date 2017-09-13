//
//  SingleHapticViewController.swift
//  desafioHapticHandoff
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 13/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import UIKit

class SingleHapticViewController: UIViewController{
    
    ///Mark: - Outlets
    @IBOutlet weak var hapticDescriptionTextView: UITextView!
    
    ///Mark: - Initializations
    var passedIndex: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hapticDescriptionTextView.text = SingletonHaptic.sharedIntance.allHaptics[passedIndex].description
        self.title = String(describing: SingletonHaptic.sharedIntance.allHaptics[passedIndex].name)
    }
}
