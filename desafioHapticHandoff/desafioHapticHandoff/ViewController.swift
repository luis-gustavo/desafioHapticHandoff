//
//  ViewController.swift
//  desafioHapticHandoff
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 13/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import UIKit

enum HapticType {
    case Start
    case Stop
    case Click
    case Notification
    case DirectionUp
    case DirectionDown
    case Success
    case Failure
    case Retry
}

class ViewController: UIViewController {
    
    ///Mark: - Outlets
    @IBOutlet weak var hapticTableView: UITableView!

    ///Mark: - Initializations
    let cellIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /**
     Table View Initial Setup
     */
    func setupTableView(){
        self.hapticTableView.delegate = self
        self.hapticTableView.dataSource = self
    }
    
    ///Mark: - Actions
}

///Mark: - Table View Data Source and Delegate

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        return cell
    }
}
