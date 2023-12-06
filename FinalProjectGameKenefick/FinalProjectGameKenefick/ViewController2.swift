//
//  ViewController2.swift
//  FinalProjectGameKenefick
//
//  Created by JAKE KENEFICK on 12/5/23.
//

import UIKit

class ViewController2: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    
   
  
    override func viewDidLoad() {
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
       
     
        return cell
    }
    
    
    @IBAction func rollAction(_ sender: UIButton) {
        let randomInt = Int.random(in: 0..<6)
        let newDice = Die(number : randomInt)
        Dice.stack.append(newDice)
        print(Dice.stack)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
