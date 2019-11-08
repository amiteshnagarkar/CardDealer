//
//  ViewController.swift
//  WarCardGame
//
//  Created by Amitesh Nagarkar on 15/05/2019.
//  Copyright © 2019 Amitesh Nagarkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }


    @IBAction func dealtapped(_ sender: Any) {
        
        let leftrandomnumber = arc4random_uniform(13) + 2
        //this randomises 2 numbers
        
        let rightrandomnumber = arc4random_uniform(13) + 2
        //print ("right random number is: \(rightrandomnumber)")
        
        leftimageview.image = UIImage(named: "card\(leftrandomnumber)")
        // changes the image views.
        rightimageview.image = UIImage(named: "card\(rightrandomnumber)")
        
        
        //compare numbers
        
        if leftrandomnumber > rightrandomnumber {
            leftscore += 1 //updates the score
            
            leftscorelabel.text = String (leftscore)
        }
        else if rightrandomnumber > leftrandomnumber {
            rightscore += 1
            rightscorelabel.text = String (rightscore)
            
        }
        else if leftrandomnumber == rightrandomnumber {
            
        }
        
    }
    
    
    
    
}

