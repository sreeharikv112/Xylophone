//
//  ViewController.swift
//  Xylophone
//
//  Created by Hari on 28/05/19.
//  Copyright © 2019 Hari. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var mAudioPlayer: AVAudioPlayer!
    let mSoundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func notePressed(_ sender: UIButton) {
        
        actionPlaySound(sender.tag)
    }
    
    func actionPlaySound(_ valueSelected: Int)  {
        let soundURL = Bundle.main.url(forResource: mSoundArray[valueSelected-1], withExtension: "wav")
        do{
            mAudioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            mAudioPlayer.play()
        }
        catch{
            print(error)
        }
    }
    
}

