//
//  ViewController.swift
//  123
//
//  Created by Tingyi Lee on 7/22/19.
//  Copyright © 2019 Tingyi Lee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let windowMaskImageView = UIImageView(image: UIImage(named: "window_mask.png"))
        let url = URL(string: "https://bit.ly/3360NFs")
        let player = AVPlayer(url: url!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(playerLayer)
        playerLayer.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: windowMaskImageView.frame.size)
        playerLayer.mask = windowMaskImageView.layer
        player.play()
    }
}

