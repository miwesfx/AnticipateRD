//
//  VideosVC.swift
//  AnticipateRD
//
//  Created by Miguel on 8/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit
//import MediaPlayer
import AVKit
import AVFoundation

class VideosVC: UIViewController {
    
    var cadena = String()
    
    //var moviePlayer:MPMoviePlayerController!
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let url:NSURL = NSURL(string: cadena)!
        
        
        /*moviePlayer = MPMoviePlayerController(contentURL: url)
        moviePlayer.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        self.view.addSubview(moviePlayer.view)
        moviePlayer.fullscreen = true
        
        moviePlayer.controlStyle = MPMovieControlStyle.Embedded*/
    }

    /*override func viewDidAppear(animated: Bool) {
        let url:NSURL = NSURL(string: cadena)!
        playerView = AVPlayer(URL: url)
        
        playerViewController.player = playerView
        
        self.presentViewController(playerViewController, animated: true){
            self.playerViewController.player?.play()
        }
        
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(animated: Bool) {
        //self.playerViewController.player?.pause()
    }
}
