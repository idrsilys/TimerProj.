//
//  ViewController.swift
//  TimerProject
//
//  Created by Edris ILYAS on 1.02.2023.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var counter = 0
    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction() {
        timeLabel.text = " Time = \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = " Time is Over "
        }
        
        
        
    }

    
    @IBAction func buttonClicked(_ sender: Any) {
        
        print (" button clicked ")
    }
    

}

