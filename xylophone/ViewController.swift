//
//  ViewController.swift
//  xylophone
//
//  Created by Алиса on 17.09.2024.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        playSound(title: sender.titleLabel?.text)
    }
    
    func playSound(title: String?) {
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

