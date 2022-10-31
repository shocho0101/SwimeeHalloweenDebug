//
//  ViewController.swift
//  SwimeeHalloweenDebug
//
//  Created by 張翔 on 2022/10/27.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
let bgmSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "halloween_bgm")!.data)
override func viewDidLoad() {
super.viewDidLoad()
}
bgmSoundPlayer.numberOfLoops = -1
bgmSoundPlayer.volume = 0.1
bgmSoundPlayer.play()
}
}

