//
//  ViewController.swift
//  CollectionViewAPp
//
//  Created by JAKE KENEFICK on 11/7/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    override func viewDidLoad() {
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        cell.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha:1.0)
        return cell
    }


}

