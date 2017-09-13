//
//  DetailHapticInterfaceController.swift
//  desafioHapticHandoff
//
//  Created by Isaias Fernandes on 13/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import UIKit
import WatchKit

class DetailHapticInterfaceController: WKInterfaceController {
    
    @IBOutlet var labelDetailHaptic: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        guard let detail = context as? String else { return }
        
        self.labelDetailHaptic.setText(detail)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    

}
