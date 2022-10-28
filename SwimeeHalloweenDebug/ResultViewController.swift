//
//  ResultViewController.swift
//  SwimeeHalloweenDebug
//
//  Created by 張翔 on 2022/10/28.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!
    
    let saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        number = Int.random(in: 0...8)
        let imageName = "halloween_chara" + String(number)
        characterImageView.image = UIImage(named: imageName)
        
        if number == 8 {
            backgroundImageView.image = UIImage(named: "bgBlue")
        } else if number > 7 {
            backgroundImageView.image = UIImage(named: "bgGreen")
        } else {
            backgroundImageView.image = UIImage(named: "bgRed")
        }
        
        var monsterRecordArray = saveData.array(forKey: "monsterRecord") as? [Bool] ?? Array(repeating: false, count: 9)
        monsterRecordArray[number] = true
        saveData.set(monsterRecordArray, forKey: "monsterRecord")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.characterImageView.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .autoreverse, .repeat], animations: {
            self.characterImageView.center.y += 10.0
        }) { _ in
            self.characterImageView.center.y -= 10.0
        }
    }
    
    @IBAction func back() {
        dismiss(animated: true)
    }

}
