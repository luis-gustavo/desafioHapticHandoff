//
//  InterfaceController.swift
//  desafioHapticHandoff WatchKit Extension
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 13/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tableHaptics: WKInterfaceTable!
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        setupTable()
        // Configure interface objects here.
    }
    
    func setupTable () {
        self.tableHaptics.setNumberOfRows(HapticType.allValues.count, withRowType: "MyCell")
        for i in 0...self.tableHaptics.numberOfRows-1 {
            if let row = self.tableHaptics.rowController(at: i) as? MyCell {
                row.hapticTypeLabel.setText(HapticType.allValues[i].rawValue)
            }
        }
    }
    

    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        self.pushController(withName: "DetailHaptic", context: HapticType.allValues[rowIndex].getDetail())
    }
    

}

