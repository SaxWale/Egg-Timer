//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   /*
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
     
    */
  
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
 var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
       
        
        timer.invalidate()
        
        
        
        let hardness = sender.currentTitle
        
        
        totalTime = eggTimes[hardness!]!
        
        
        progressBar.progress = 0.0
        
        secondsPassed = 0
        
        titleLabel.text = hardness
        
        
        Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(updateTimer) , userInfo:  nil, repeats: true)
        
        
         
        }
    
    @objc func updateTimer() {
               
               if secondsPassed < totalTime {
                secondsPassed += 1
                let percentageProgress =  Float(secondsPassed) /  Float(totalTime)
                
                print(percentageProgress)
                progressBar.progress = percentageProgress
                   
                   
               }else{
                
                timer.invalidate()
                titleLabel.text = "DONE!"
        }
    
        /*
        MARK: - IF-ELSE STATMENTS
        if hardness == "Soft" {
            
            print(softTime)
        }else if hardness == "Medium" {
            
            
            print(mediumTime)
        }else {
            
            print(hardTime)
        }
      
         
         MARK:- SWITCH STATEMENTS
         
         switch hardness{
         
         case "Soft" :
         print(softTime)
         
         case "Medium" :
         print(mediumTime)
         
         default:
         print(hardTime)
         }
 
 */
 
 
 
        
        
        
        
    }
    
}
