//
//  ResultViewController.swift
//  SwimeeHalloweenDebug
//
//  Created by 張翔 on 2022/10/28.
//

import UIKit
import AVFoundation

class ResultViewController: UIViewController {

    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var characterImageView: UIImageView!
    
    var number: Int!
    
    let saveData: UserDefaults = UserDefaults.standard
    let effectSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "gacha_effect_sound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()

        number = Int.random(in: 0...8)
        let imageName = "halloween_chara" + String(number)
        characterImageView.image = UIImage(named: imageName)
        
        if number == 8 {
            statusLabel.text = "超レア"
        } else if 5 > number {
            statusLabel.text = "レア"
        } else {
            statusLabel.text = "ノーマル"
        }
        
        var monsterRecordArray = saveData.array(forKey: "monsterRecord") as? [Bool] ?? Array(repeating: false, count: 9)
        monsterRecordArray[number] = true
        saveData.set(monsterRecordArray, forKey: "monsterRecord")
        
        effectSoundPlayer.play()
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
