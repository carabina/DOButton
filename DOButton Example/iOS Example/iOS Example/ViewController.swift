//
//  ViewController.swift
//  DOButton-DEMO
//
//  Created by Daiki Okumura on 2015/07/09.
//  Copyright (c) 2015 Daiki Okumura. All rights reserved.
//

import UIKit
import DOButton

class ViewController: UIViewController {

    @IBOutlet var heartButton: DOButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width = (self.view.frame.width - 44) / 4
        var x = width / 2
        let y = self.view.frame.height / 2 - 22
        
        // star button
        let starButton = DOButton(frame: CGRectMake(x, y, 44, 44), image: UIImage(named: "star"))
        starButton.addTarget(self, action: #selector(ViewController.tappedButton(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(starButton)
        x += width
        
        // heart button
        let heartButton = DOButton(frame: CGRectMake(x, y, 44, 44), image: UIImage(named: "heart"))
        heartButton.imageColorOn = UIColor(red: 254/255, green: 110/255, blue: 111/255, alpha: 1.0)
        heartButton.circleColor = UIColor(red: 254/255, green: 110/255, blue: 111/255, alpha: 1.0)
        heartButton.lineColor = UIColor(red: 226/255, green: 96/255, blue: 96/255, alpha: 1.0)
        heartButton.addTarget(self, action: #selector(ViewController.tappedButton(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(heartButton)
        x += width
        
        // like button
        let likeButton = DOButton(frame: CGRectMake(x, y, 44, 44), image: UIImage(named: "like"))
        likeButton.imageColorOn = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
        likeButton.circleColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
        likeButton.lineColor = UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1.0)
        likeButton.addTarget(self, action: #selector(ViewController.tappedButton(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(likeButton)
        x += width
        
        // smile button
        let smileButton = DOButton(frame: CGRectMake(x, y, 44, 44), image: UIImage(named: "smile"))
        smileButton.imageColorOn = UIColor(red: 45/255, green: 204/255, blue: 112/255, alpha: 1.0)
        smileButton.circleColor = UIColor(red: 45/255, green: 204/255, blue: 112/255, alpha: 1.0)
        smileButton.lineColor = UIColor(red: 45/255, green: 195/255, blue: 106/255, alpha: 1.0)
        smileButton.addTarget(self, action: #selector(ViewController.tappedButton(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(smileButton)
        
        self.heartButton.addTarget(self, action: #selector(ViewController.tappedButton(_:)), forControlEvents: UIControlEvents.TouchUpInside)
    }

    func tappedButton(sender: DOButton) {
        if sender.selected {
            sender.deselect()
        } else {
            sender.select()
        }
    }
}

