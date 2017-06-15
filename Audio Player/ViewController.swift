//
//  ViewController.swift
//  Audio Player
//
//  Created by Tyler McGee on 6/2/17.
//  Copyright © 2017 Tyler McGee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    @IBAction func playButton(_ sender: Any) {
        
    player.play()
        
    }
    
    
    @IBAction func pauseButton(_ sender: Any) {
        
        player.pause()
        
    }
    
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        player.volume = slider.value
        
    }
    
    
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "sheep", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            

     
        } catch {
            
           // process any errors
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

