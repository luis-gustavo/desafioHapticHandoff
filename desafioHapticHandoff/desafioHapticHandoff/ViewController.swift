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
    var passedIndex: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        populateHapticArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /***
     Table View Initial Setup
     */
    func setupTableView(){
        self.hapticTableView.delegate = self
        self.hapticTableView.dataSource = self
    }
    
    /***
     Populating HapticArray
     */
    func populateHapticArray(){
        
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .Notification, description: "Alerts the user to an arrived notification when the Watch app is not running in the foreground."))
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .DirectionUp, description: "Indicates an increase in a specific value or when a value has gone above a certain threshold. For example, you could use this feedback when adjusting the value of a thermostat."))
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .DirectionDown, description: "Indicates a decrease in a specific value or when a value has gone below a certain threshold. For example, you could use this feedback when adjusting the value of a thermostat."))
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .Success, description: "Indicates the successful completion of a task or the answering of a question."))
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .Failure, description: "Indicates the failed completion of a task or answering of a question."))
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .Retry, description: "Indicates that the user should retry a task that temporarily failed."))
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .Start, description: "Indicates the beginning of an action. For example, a stopwatch app uses this haptic when the user starts the stopwatch."))
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .Stop, description: "Indicates the end of an action. For example, a stopwatch app uses this haptic when the user stops the stopwatch."))
        SingletonHaptic.sharedIntance.allHaptics.append(Haptic(name: .Click, description: "Indicates a simple click type of feedback. Use this haptic to mark fixed points along a path. Space out the intervals at which you play the haptic rather than playing it several times in quick succession."))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSingleHaptic"{
            if let nextScreen = segue.destination as? SingleHapticViewController{
                nextScreen.passedIndex = passedIndex
            }
        }
    }
}

///Mark: - Table View Data Source and Delegate

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SingletonHaptic.sharedIntance.allHaptics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! HapticTableViewCell
        cell.hapticName.text = String(describing: SingletonHaptic.sharedIntance.allHaptics[indexPath.row].name)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        passedIndex = indexPath.row
        performSegue(withIdentifier: "goToSingleHaptic", sender: Any?.self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
