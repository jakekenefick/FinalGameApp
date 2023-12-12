//
//  ViewController2.swift
//  FinalProjectGameKenefick
//
//  Created by JAKE KENEFICK on 12/5/23.
//
import UIKit
class ViewController2: UIViewController {
   
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var imageDie1: UIImageView!
    
    @IBOutlet weak var imageDie2: UIImageView!
    
    @IBOutlet weak var imageDie3: UIImageView!
    
    @IBOutlet weak var imageDie4: UIImageView!
    
    @IBOutlet weak var imageDie5: UIImageView!
    
    @IBOutlet weak var die1LabelOutlet: UILabel!
    
    @IBOutlet weak var die3LabelOutlet: UILabel!
    
    @IBOutlet weak var die2LabelOutlet: UILabel!
    
    @IBOutlet weak var die4LabelOutlet: UILabel!
    
    @IBOutlet weak var die5LabelOutlet: UILabel!
    var h = false
    var i = false
    var j = false
    var k = false
    var l = false
    var wow = 0
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    var randomInt = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func rollAction(_ sender: UIButton) {
        if(Dice.count < 5){
           randomInt = Int.random(in: 1...6)
   
            if (randomInt == 1){
                imageOutlet.image = UIImage(named : "die1")
                
            }
            if (randomInt == 2){
                imageOutlet.image = UIImage(named : "die2")
            }
            if (randomInt == 3){
                imageOutlet.image = UIImage(named : "die3")
            }
            if (randomInt == 4){
                imageOutlet.image = UIImage(named : "die4")
            }
            if (randomInt == 5){
                imageOutlet.image = UIImage(named : "die5")
            }
            if (randomInt == 6){
                imageOutlet.image = UIImage(named : "die6")
            }
            
            
                if(Dice.count == 0)
                {
                   
                    if(h == false){
                    if (randomInt == 1){
                        imageDie1.image = UIImage(named : "die1")
                        if(wow == 0){
                            Dice.logoImages.append(UIImage(named: "die1")!)
                        }
                    }
                    if (randomInt == 2){
                        imageDie1.image = UIImage(named : "die2")
                        if(wow == 0){
                            Dice.logoImages.append(UIImage(named: "die2")!)
                        }
                    }
                    if (randomInt == 3){
                        imageDie1.image = UIImage(named : "die3")
                        if(wow == 0){
                            Dice.logoImages.append(UIImage(named: "die3")!)
                        }
                    }
                    if (randomInt == 4){
                        imageDie1.image = UIImage(named : "die4")
                        if(wow == 0){
                            Dice.logoImages.append(UIImage(named: "die4")!)
                        }
                    }
                    if (randomInt == 5){
                        imageDie1.image = UIImage(named : "die5")
                        if(wow == 0){
                            Dice.logoImages.append(UIImage(named: "die5")!)
                        }
                    }
                    if (randomInt == 6){
                        imageDie1.image = UIImage(named : "die6")
                        if(wow == 0){
                            Dice.logoImages.append(UIImage(named: "die6")!)
                        }
                    }
                }
                    else{
                        
                        imageDie1.image = UIImage(named: "die" + "\(a)")
                    }
            }
       
            if(Dice.count == 1)
            {
                if( i == false ){
                    if (randomInt == 1){
                        imageDie2.image = UIImage(named : "die1")
                        
                        Dice.logoImages.append(UIImage(named: "die1")!)
                    }
                    if (randomInt == 2){
                        imageDie2.image = UIImage(named : "die2")
                        Dice.logoImages.append(UIImage(named: "die2")!)
                    }
                    if (randomInt == 3){
                        imageDie2.image = UIImage(named : "die3")
                        Dice.logoImages.append(UIImage(named: "die3")!)
                    }
                    if (randomInt == 4){
                        imageDie2.image = UIImage(named : "die4")
                        Dice.logoImages.append(UIImage(named: "die4")!)
                    }
                    if (randomInt == 5){
                        imageDie2.image = UIImage(named : "die5")
                        Dice.logoImages.append(UIImage(named: "die5")!)
                    }
                    if (randomInt == 6){
                        imageDie2.image = UIImage(named : "die6")
                        Dice.logoImages.append(UIImage(named: "die6")!)
                    }
                }
                else{
                    imageDie2.image = UIImage(named: "die" + "\(b)")
                }
            }
            if(Dice.count == 2)
            {
                if (randomInt == 1){
                    imageDie3.image = UIImage(named : "die1")
                    Dice.logoImages.append(UIImage(named: "die1")!)
                    
                }
                if (randomInt == 2){
                    imageDie3.image = UIImage(named : "die2")
                    Dice.logoImages.append(UIImage(named: "die2")!)
                }
                if (randomInt == 3){
                    imageDie3.image = UIImage(named : "die3")
                    Dice.logoImages.append(UIImage(named: "die3")!)
                }
                if (randomInt == 4){
                    imageDie3.image = UIImage(named : "die4")
                    Dice.logoImages.append(UIImage(named: "die4")!)
                }
                if (randomInt == 5){
                    imageDie3.image = UIImage(named : "die5")
                    Dice.logoImages.append(UIImage(named: "die5")!)
                }
                if (randomInt == 6){
                    imageDie3.image = UIImage(named : "die6")
                    Dice.logoImages.append(UIImage(named: "die6")!)
                }
            }
          
            if(Dice.count == 3)
            {
                if (randomInt == 1){
                    imageDie4.image = UIImage(named : "die1")
                    Dice.logoImages.append(UIImage(named: "die1")!)
                    
                }
                if (randomInt == 2){
                    imageDie4.image = UIImage(named : "die2")
                    Dice.logoImages.append(UIImage(named: "die2")!)
                }
                if (randomInt == 3){
                    imageDie4.image = UIImage(named : "die3")
                    Dice.logoImages.append(UIImage(named: "die3")!)
                }
                if (randomInt == 4){
                    imageDie4.image = UIImage(named : "die4")
                    Dice.logoImages.append(UIImage(named: "die4")!)
                }
                if (randomInt == 5){
                    imageDie4.image = UIImage(named : "die5")
                    Dice.logoImages.append(UIImage(named: "die5")!)
                }
                if (randomInt == 6){
                    imageDie4.image = UIImage(named : "die6")
                    Dice.logoImages.append(UIImage(named: "die6")!)
                }
            }
            
            if(Dice.count == 4)
            {
                if (randomInt == 1){
                    imageDie5.image = UIImage(named : "die1")
                    Dice.logoImages.append(UIImage(named: "die1")!)
                    
                }
                if (randomInt == 2){
                    imageDie5.image = UIImage(named : "die2")
                    Dice.logoImages.append(UIImage(named: "die2")!)
                }
                if (randomInt == 3){
                    imageDie5.image = UIImage(named : "die3")
                    Dice.logoImages.append(UIImage(named: "die3")!)
                }
                if (randomInt == 4){
                    imageDie5.image = UIImage(named : "die4")
                    Dice.logoImages.append(UIImage(named: "die4")!)
                }
                if (randomInt == 5){
                    imageDie5.image = UIImage(named : "die5")
                    Dice.logoImages.append(UIImage(named: "die5")!)
                }
                if (randomInt == 6){
                    imageDie5.image = UIImage(named : "die6")
                    Dice.logoImages.append(UIImage(named: "die6")!)
                }
            }
           
            Dice.count += 1
            
        }
        
    }
    
    @IBAction func die1Action(_ sender: UIButton) {
        die1LabelOutlet.textColor = UIColor.green
        h = true
       a = randomInt
    }
    
    @IBAction func die2Action(_ sender: UIButton) {
        die2LabelOutlet.textColor = UIColor.green
        i = true
        b = randomInt
    }
    
    
    @IBAction func die3Action(_ sender: UIButton) {
        die3LabelOutlet.textColor = UIColor.green
       j = true
        c = randomInt
        
    }
    
    
    @IBAction func die4Action(_ sender: UIButton) {
        die4LabelOutlet.textColor = UIColor.green
        k = true
        d = randomInt
        
    }
    
    @IBAction func die5Action(_ sender: UIButton) {
        die5LabelOutlet.textColor = UIColor.green
        l = true
        e = randomInt
    }
    
    @IBAction func rerollACtion(_ sender: UIButton) {
        Dice.count = 0
       
    
    }
    
    /*
     @IBAction func die3Action(_ sender: UIButton) {
     }
     // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

