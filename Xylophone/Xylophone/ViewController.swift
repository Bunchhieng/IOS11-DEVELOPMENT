//
//  ViewController.swift
//  Xylophone
//
//  Created by Soth, Bunchhieng on 11/12/17.
//  Copyright © 2017 Bunchhieng Soth. All rights reserved.
//

import UIKit
import AVFoundation // Audio Visual foundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer!
    let soundsArr = ["bird", "cow", "dog", "dolphin", "donkey", "duck", "elephant", "horse", "lion"]
    
    @IBAction func notePressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: soundsArr[sender.tag - 1], withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            print(error)
        }
        
        player.play()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

