//
//  ViewController.swift
//  kev
//
//  Created by kevin on 16/08/2017.
//  Copyright © 2017 kevin-young. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var cardnames=["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    var LeftScore = 0
    var RightScore = 0
    var a = 0

    @IBOutlet weak var LeftCardController: UIImageView!
    @IBOutlet weak var RightCardController: UIImageView!
    @IBOutlet weak var PlayerScoreLable: UILabel!
    @IBOutlet weak var CPUScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func DealCards(sender: UIButton) {
        
        a = cardnames.count
        let b:Int = Int(arc4random_uniform(UInt32(a)))
        
        let c:Int = Int(arc4random_uniform(UInt32(a)))
        
        LeftCardController.image = UIImage(named: cardnames[b])
        RightCardController.image = UIImage(named: cardnames[c] )
        
        if b > c || b == c {
            
            LeftScore += 1
            
            PlayerScoreLable.text = String(LeftScore)
        }
        else {
            RightScore += 1
            
            CPUScoreLabel.text = String(RightScore)
            
        }
        
        
    
    
}

}
