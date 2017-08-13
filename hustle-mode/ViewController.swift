//
//  ViewController.swift
//  hustle-mode
//
//  Created by Viraj Upadhyay on 7/24/17.
//  Copyright © 2017 agloe labs. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    
    @IBOutlet weak var powerBtn: UIButton!
    
    @IBOutlet weak var rocket: UIImageView!
    
    
    @IBOutlet weak var cloudHolder: UIView!
    
    @IBOutlet weak var hustleModeLbl: UILabel!

    @IBOutlet weak var onLabl: UILabel!
    
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    
    }

    @IBAction func powerBtnPressed(_ sender: Any) {
        
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
        
        player.play()
        
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 320, height: 114)
            
        }) { (Finished) in
            self.hustleModeLbl.isHidden = false
            self.onLabl.isHidden = false
            
        }
        
    }
    


}

