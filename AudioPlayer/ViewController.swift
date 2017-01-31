//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Ahmed T Khalil on 1/22/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit
//import Audio Visual Framework
import AVFoundation

class ViewController: UIViewController {
    
    //much in the same way that we create a timer object or a location manager as the central 'thing' to control timer or location, respectively, we create a AVAudioPlayer object to control audio playback
    var player = AVAudioPlayer()
    
    @IBOutlet var volumeLevel: UISlider!
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func volumeChange(_ sender: Any) {
        player.volume = volumeLevel.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Bundle class lets you access resources in the directory
        let audioPath = Bundle.main.path(forResource: "ILikeBadHouseVersion", ofType: "mp3")
        
        do{
            // 'do...catch' is similar to 'if let...', but here you try a whole command as opposed to simply data type casting
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        }catch{
            
            //handle any errors
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

