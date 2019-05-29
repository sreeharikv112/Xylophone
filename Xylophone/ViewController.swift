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
    
    @IBOutlet weak var mNote1: UIButton!
    @IBOutlet weak var mNote2: UIButton!
    @IBOutlet weak var mNote3: UIButton!
    @IBOutlet weak var mNote4: UIButton!
    @IBOutlet weak var mNote5: UIButton!
    @IBOutlet weak var mNote6: UIButton!
    @IBOutlet weak var mNote7: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        drawShadow(mNote1)
        drawShadow(mNote2)
        drawShadow(mNote3)
        drawShadow(mNote4)
        drawShadow(mNote5)
        drawShadow(mNote6)
        drawShadow(mNote7)
    }
    
    func drawShadow(_ button: UIButton){
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
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

