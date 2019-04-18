//
//  PlayTimerViewController.swift
//  timer
//
//  Created by Cameron Yang  on 1/12/18.
//  Copyright © 2018 Cameron Yang . All rights reserved.
//

import UIKit

class PlayTimerViewController: UIViewController {
    @IBOutlet var countDownLabel: UILabel!
    @IBOutlet var progressView: UIProgressView!
    var pSeconds = 300 //5 minute seconds counter
    var pMinute = 5 //5 minute minute counter
    var pCount = 60 //counter for a minute for playTimer
    var playTimer = Timer()
    //action2 defines the action of playTimer
    func action2(){
        pSeconds -= 1
        if (pCount == 60) //same behavior as above
        {
            pCount -= 60
            pMinute -= 1
        }
        if (pSeconds > 0){
            if (pSeconds % 60 < 10)
            {
                countDownLabel.text = String(pMinute) + ":0" + String(pSeconds % 60)
                pCount += 1
            }
            else{
                countDownLabel.text = String(pMinute) + ":" + String(pSeconds % 60)
                pCount += 1
            }
        }
        else if (pSeconds == 0)
        {
            performSegue(withIdentifier: "0:00", sender: WorkTimerViewController())
            
            
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        countDownLabel.text = "5:00"
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
