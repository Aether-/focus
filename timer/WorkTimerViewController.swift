//
//  WorkTimerViewController.swift
//  timer
//
//  Created by Cameron Yang  on 1/12/18.
//  Copyright © 2018 Cameron Yang . All rights reserved.
//

import UIKit
class WorkTimerViewController: UIViewController{
    //Mark: Properties
    @IBOutlet var finished: UILabel!
    @IBOutlet var breakTimeLabel: UILabel!
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    var wSeconds = 1500 //25 minute seconds counter
    var count = 60 //counter for a minute for workTimer
    var wMinute = 25 //25 minute minute counter
    var workTimer = Timer() //25 minute timer
    
    //Mark: Actions
    @IBAction func start(_ sender: AnyObject) {
        //start button functionality
        workTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WorkTimerViewController.action), userInfo: nil, repeats: true)
        startButton.isHidden = true;
        //this will initiate the workTimer when start is pressed
    }
    //action() defines the action of workTimer
    func action() {
        //how the timer counts down
        wSeconds -= 1
        if (count == 60) //checks to see if a minute has passed
        {
            count -= 60 //resets count
            wMinute -= 1 //subtracts a minute
        }
        if(wSeconds > 0) {
            progressView.progress += 0.0006666666666
            if (wSeconds % 60 < 10) //checks to see if seconds in current minute is <10 seconds because a 0 needs to be added if so
            {
                countDownLabel.text = String(wMinute) + ":0" + String(wSeconds % 60) //Sets the label to the current minutes/seconds with an additional 0 before the seconds because <10 seconds
                //increases the progress bar
                count += 1 //adds a second to count to keep track of seconds within a single minute
            }
            else {
                countDownLabel.text = String(wMinute) + ":" + String(wSeconds % 60) //Sets the countDownLabel to current minutes/seconds
                
                count += 1 //adds a second to count to keep track of seconds within a single minute
                
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
