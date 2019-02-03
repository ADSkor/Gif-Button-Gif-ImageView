//
//  ViewController.swift
//  GifButton
//
//  Created by Aleksandr Skorotkin on 03/02/2019.
//  Copyright © 2019 Aleksandr Skorotkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Button: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    //Just for checking ButtonPressed
    var int = 0
    
    @IBAction func Button(_ sender: UIButton) {
        
        //Just for checking ButtonPressed
        int += 1
        label.text = "Button pressed \(int) times"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //This is from swift+gif file
        imageView.loadGif(name: "google")
        
        //This is a self-made animation from a variety of jpg's
        googleButton()

    }

    func googleButton() {
        var imageArray = [UIImage]()
        
        for i in 0...99 {
            imageArray.append(UIImage(named: "0\(i).jpg")!)
        }
        
        Button.setImage(UIImage(named: "00.jpg")!, for: UIControl.State.normal)
        Button.imageView!.animationImages = imageArray
        Button.imageView!.animationDuration = 4.0
        Button.imageView!.startAnimating()
        
    }

}

