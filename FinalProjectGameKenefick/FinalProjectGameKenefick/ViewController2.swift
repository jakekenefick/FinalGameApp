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
    
    @IBOutlet weak var computersScoreOutlet: UILabel!
    
    @IBOutlet weak var winLabelOutlet: UILabel!
    
    @IBOutlet weak var yourScore: UILabel!
    
    @IBOutlet weak var loseLabelOutlet: UILabel!
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
    var roll = 0
    var q = 0
    var final = 0
    var computersScore = 0
    var x = 0
    var die1 = true
    var die2 = true
    var die3 = true
    var die5 = true
    var die4 = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        computersScore = Int.random(in: 24...28)
        computersScoreOutlet.text = "Computers Score: \(computersScore)"
        winLabelOutlet.text = "Win: 0"
        loseLabelOutlet.text = " Lose: 0"
        yourScore.text = "Your score:0"
    }
    
    
    
    
    
    @IBAction func rollAction(_ sender: UIButton) {
        if(Dice.count < 5){
           randomInt = Int.random(in: 1...6)
   q += 1
            if(q>5)
            {
                let alert = UIAlertController(title: "Error", message: "you can't roll until you reroll", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "ok", style: .default , handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            }
            
            
                if(Dice.count == 0 && die1 == true )
                {
                   
                    if(h == false){
                    if (randomInt == 1){
                        imageDie1.image = UIImage(named : "die1")
                            Dice.logoImages.append(UIImage(named: "die1")!)
                        a = 1
                    }
                    if (randomInt == 2){
                        imageDie1.image = UIImage(named : "die2")
                   
                            Dice.logoImages.append(UIImage(named: "die2")!)
                        a = 2
                    }
                    if (randomInt == 3){
                        imageDie1.image = UIImage(named : "die3")
                   
                            Dice.logoImages.append(UIImage(named: "die3")!)
                        a = 3
                    }
                    if (randomInt == 4){
                        imageDie1.image = UIImage(named : "die4")
                  
                            Dice.logoImages.append(UIImage(named: "die4")!)
                        a = 4
                    }
                    if (randomInt == 5){
                        imageDie1.image = UIImage(named : "die5")
                 
                            Dice.logoImages.append(UIImage(named: "die5")!)
                        a = 5
                    }
                    if (randomInt == 6){
                        imageDie1.image = UIImage(named : "die6")
                            Dice.logoImages.append(UIImage(named: "die6")!)
                        a = 6
                    }
                }
                    else{
                        
                        imageDie1.image = UIImage(named: "die" + "\(a)")
                    }
            }
         else if(Dice.count == 0){
                Dice.count += 1
            }
       
            if(Dice.count == 1 && die2 == true )
            {
                if( i == false ){
                    if (randomInt == 1){
                        imageDie2.image = UIImage(named : "die1")
                        
                        Dice.logoImages.append(UIImage(named: "die1")!)
                        
                    b = 1
                    }
                    if (randomInt == 2){
                        imageDie2.image = UIImage(named : "die2")
                        Dice.logoImages.append(UIImage(named: "die2")!)
                        b = 2
                    }
                    if (randomInt == 3){
                        imageDie2.image = UIImage(named : "die3")
                        Dice.logoImages.append(UIImage(named: "die3")!)
                        b = 3
                    }
                    if (randomInt == 4){
                        imageDie2.image = UIImage(named : "die4")
                        Dice.logoImages.append(UIImage(named: "die4")!)
                        b = 4
                    }
                    if (randomInt == 5){
                        imageDie2.image = UIImage(named : "die5")
                        Dice.logoImages.append(UIImage(named: "die5")!)
                        b = 5
                    }
                    if (randomInt == 6){
                        imageDie2.image = UIImage(named : "die6")
                        Dice.logoImages.append(UIImage(named: "die6")!)
                        b = 6
                    }
                }
                else{
                    imageDie2.image = UIImage(named: "die" + "\(b)")
                }
            }
            else if(Dice.count == 1){
                Dice.count += 1
            }
            if(Dice.count == 2 && die3 == true)
            {
                if( j == false){
                    if (randomInt == 1){
                        imageDie3.image = UIImage(named : "die1")
                        Dice.logoImages.append(UIImage(named: "die1")!)
                        c = 1
                        
                    }
                    if (randomInt == 2){
                        imageDie3.image = UIImage(named : "die2")
                        Dice.logoImages.append(UIImage(named: "die2")!)
                        c = 2
                    }
                    if (randomInt == 3){
                        imageDie3.image = UIImage(named : "die3")
                        Dice.logoImages.append(UIImage(named: "die3")!)
                        c = 3
                    }
                    if (randomInt == 4){
                        imageDie3.image = UIImage(named : "die4")
                        Dice.logoImages.append(UIImage(named: "die4")!)
                        c = 4
                    }
                    if (randomInt == 5){
                        imageDie3.image = UIImage(named : "die5")
                        Dice.logoImages.append(UIImage(named: "die5")!)
                        c = 5
                    }
                    if (randomInt == 6){
                        imageDie3.image = UIImage(named : "die6")
                        Dice.logoImages.append(UIImage(named: "die6")!)
                        c = 6
                    }
                }
                else{
                    imageDie3.image = UIImage(named: "die" + "\(c)")
                }
            }
            else if(Dice.count == 2){
                Dice.count += 1
            }
          
            if(Dice.count == 3 && die4 == true )
            {
                if(k == false){
                    if (randomInt == 1){
                        imageDie4.image = UIImage(named : "die1")
                        Dice.logoImages.append(UIImage(named: "die1")!)
                        d = 1
                        
                    }
                    if (randomInt == 2){
                        imageDie4.image = UIImage(named : "die2")
                        Dice.logoImages.append(UIImage(named: "die2")!)
                        d = 2
                    }
                    if (randomInt == 3){
                        imageDie4.image = UIImage(named : "die3")
                        Dice.logoImages.append(UIImage(named: "die3")!)
                        d = 3
                    }
                    if (randomInt == 4){
                        imageDie4.image = UIImage(named : "die4")
                        Dice.logoImages.append(UIImage(named: "die4")!)
                        d = 4
                    }
                    if (randomInt == 5){
                        imageDie4.image = UIImage(named : "die5")
                        Dice.logoImages.append(UIImage(named: "die5")!)
                        d = 5
                    }
                    if (randomInt == 6){
                        imageDie4.image = UIImage(named : "die6")
                        Dice.logoImages.append(UIImage(named: "die6")!)
                        d = 6
                    }
                }
                else{
                    imageDie4.image = UIImage(named: "die" + "\(d)")
                }
            }
            else if(Dice.count == 3) {
                Dice.count+=1
            }
            
            if(Dice.count == 4 && die5 == true )
            {
                if(l == false){
                    if (randomInt == 1){
                        imageDie5.image = UIImage(named : "die1")
                        Dice.logoImages.append(UIImage(named: "die1")!)
                        e = 1
                        
                    }
                    if (randomInt == 2){
                        imageDie5.image = UIImage(named : "die2")
                        Dice.logoImages.append(UIImage(named: "die2")!)
                        e = 2
                    }
                    if (randomInt == 3){
                        imageDie5.image = UIImage(named : "die3")
                        Dice.logoImages.append(UIImage(named: "die3")!)
                        e = 3
                    }
                    if (randomInt == 4){
                        imageDie5.image = UIImage(named : "die4")
                        Dice.logoImages.append(UIImage(named: "die4")!)
                        e = 4
                    }
                    if (randomInt == 5){
                        imageDie5.image = UIImage(named : "die5")
                        Dice.logoImages.append(UIImage(named: "die5")!)
                        e = 5
                    }
                    if (randomInt == 6){
                        imageDie5.image = UIImage(named : "die6")
                        Dice.logoImages.append(UIImage(named: "die6")!)
                        e = 6
                    }
                }
                else{
                    imageDie5.image = UIImage(named: "die" + "\(e)")
                }
            }
            else if(Dice.count == 4) {
                Dice.count+=1
            }
           
            Dice.count += 1
            
            
        }
        
    }
    
    @IBAction func die1Action(_ sender: UIButton) {
        die1LabelOutlet.textColor = UIColor.green
        h = true
        x += a
        yourScore.text = "Your Score: \(x)"
        die1 = false
      
    }
    
    @IBAction func die2Action(_ sender: UIButton) {
        die2LabelOutlet.textColor = UIColor.green
        i = true
       x += b
        yourScore.text = "Your Score: \(x)"
        die2 = false
    }
    
    
    @IBAction func die3Action(_ sender: UIButton) {
        die3LabelOutlet.textColor = UIColor.green
       j = true
       x += c
        yourScore.text = "Your Score: \(x)"
        die3 = false
    }
    
    
    @IBAction func die4Action(_ sender: UIButton) {
        die4LabelOutlet.textColor = UIColor.green
        k = true
       x += d
        yourScore.text = "Your Score: \(x)"
        die4 = false
    }
    
    @IBAction func die5Action(_ sender: UIButton) {
        die5LabelOutlet.textColor = UIColor.green
        l = true
       x += e
        yourScore.text = "Your Score: \(x)"
        die5 = false
    }
    
    @IBAction func rerollACtion(_ sender: UIButton) {
       
            q = 0
            roll+=1
        
        
        if(roll>2){
            let alert = UIAlertController(title: "ERROR", message: "You can't roll more than 3 times!!!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default , handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
         
            
            
        }
        else{Dice.count = 0}
    
    }
    
    @IBAction func finishAction(_ sender: UIButton) {
        var z = a + b + c + d + e
        if(z > computersScore)
        {
            let alert = UIAlertController(title: "WOOHOO", message: "You WON YOU ARE THE BEST", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default , handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            Dice.wins += 1
            winLabelOutlet.text = "Win: \(Dice.wins)"
        }
       if(z < computersScore){
            let alert = UIAlertController(title: "WAMP WAMP", message: "you're trash", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default , handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
           Dice.lose += 1
           loseLabelOutlet.text = "Lose: \(Dice.lose)"
        }
        else
        {
            let alert = UIAlertController(title: "Tie", message: "Goodshit young blood", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default , handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        
        }
        
        
        final = 1
    }
    
    @IBAction func playAgainAction(_ sender: UIButton) {
        
        if(final == 1)
        {
            Dice.count = 0
            Dice.logoImages.removeAll()
            roll = 0
            imageDie1.image = nil
            imageDie2.image = nil
            imageDie3.image = nil
            imageDie4.image = nil
            imageDie5.image = nil
            h = false
            i = false
            j = false
            k = false
            l = false
            die1LabelOutlet.textColor = UIColor.black
            die2LabelOutlet.textColor = UIColor.black
            die3LabelOutlet.textColor = UIColor.black
            die4LabelOutlet.textColor = UIColor.black
            die5LabelOutlet.textColor = UIColor.black
            q = 0
             computersScore = Int.random(in: 18...28)
            computersScoreOutlet.text = "Computer score \(computersScore)"
            x = 0
            yourScore.text = "Your score: 0"
             die1 = true
             die2 = true
             die3 = true
             die5 = true
             die4 = true
            final = 0 

        }
        else
        {
            
                let alert = UIAlertController(title: "Error", message: "Please click finish game before playing again.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "ok", style: .default , handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
        }
        
        
        
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

