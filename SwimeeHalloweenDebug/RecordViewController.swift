//
//  RecordViewController.swift
//  SwimeeHalloweenDebug
//
//  Created by 張翔 on 2022/10/28.
//

import UIKit

class RecordViewController: UIViewController {
    
    @IBOutlet var imageView0: UIImageView!
    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    @IBOutlet var imageView4: UIImageView!
    @IBOutlet var imageView5: UIImageView!
    @IBOutlet var imageView6: UIImageView!
    @IBOutlet var imageView7: UIImageView!
    @IBOutlet var imageView8: UIImageView!
    
    let saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        var monsterRecordArray = saveData.array(forKey: "monsterRecord") as? [Bool] ?? Array(repeating: false, count: 9)
        
        if monsterRecordArray[0] == true {
            imageView0.image = UIImage(named: "halloween_chara0")
        } else {
            imageView0.image = UIImage(named: "question")
        }
        
        if monsterRecordArray[1] == true {
            imageView1.image = UIImage(named: "halloween_chara1")
        } else {
            imageView1.image = UIImage(named: "question")
        }
        
        if monsterRecordArray[2] == true {
            imageView2.image = UIImage(named: "halloween_chara2")
        } else {
            imageView2.image = UIImage(named: "question")
        }
        
        if monsterRecordArray[3] == true {
            imageView3.image = UIImage(named: "halloween_chara3")
        } else {
            imageView3.image = UIImage(named: "question")
        }
        
        if monsterRecordArray[4] == true {
            imageView4.image = UIImage(named: "halloween_chara4")
        } else {
            imageView4.image = UIImage(named: "question")
        }
        
        if monsterRecordArray[5] == true {
            imageView5.image = UIImage(named: "halloween_chara5")
        } else {
            imageView5.image = UIImage(named: "question")
        }
        
        if monsterRecordArray[6] == true {
            imageView6.image = UIImage(named: "halloween_chara6")
        } else {
            imageView6.image = UIImage(named: "question")
        }
        
        if monsterRecordArray[7] == true {
            imageView7.image = UIImage(named: "halloween_chara7")
        } else {
            imageView7.image = UIImage(named: "question")
        }
        
        if monsterRecordArray[8] == true {
            imageView8.image = UIImage(named: "halloween_chara8")
        } else {
            imageView8.image = UIImage(named: "question")
        }
    }
    
    @IBAction func back() {
        dismiss(animated: true)
    }
}
