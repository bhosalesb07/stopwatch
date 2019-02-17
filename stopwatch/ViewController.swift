//
//  ViewController.swift
//  stopwatch
//
//  Created by Mac on 11/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var timer : Timer?
    var count : Int = 0
    
    var startstop : Bool = true
  
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var startlbl: UIButton!
    
    @IBOutlet weak var resetlbl: UIButton!
    
    
    @IBAction func actionrst(_ sender: Any) {
        
        timer?.invalidate()
        count = 0
        Label.text = String(count)
        startlbl.setTitle("Start", for: .normal)
        Actionstart(self)
        
    }
    
    @IBAction func Actionstart(_ sender: Any) {
        
        if startstop == true
        {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(display), userInfo: nil, repeats: true)
            startstop = false
            startlbl.setTitle("Pause", for: .normal)
        }
            
        else
        {
            
            timer?.invalidate()
            startstop = true
            startlbl.setTitle("Start", for: .normal)
        }
    }
    
    @objc
    func display()
    {
        count = count + 1
        Label.text = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
        startlbl.layer.cornerRadius = 25
        resetlbl.layer.cornerRadius = 25
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

