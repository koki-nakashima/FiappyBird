//
//  StartController.swift
//  FlappyBird
//
//  Created by 中島晃希 on 2021/02/26.
//

import UIKit

class StartController: UIViewController {
    
    var timer:Timer = Timer()
    
    @IBOutlet var imageView: UIImageView!
    
//    @objc func () {
//               print("onTimer")
        
//    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //タイマー設定
//        timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(), userInfo: nil, repeats: false)
        
    }
    
    @IBAction func buttonTapped(sender: UIImageView) {
        
    
        imageView.alpha = 1
        UIView.animate(withDuration: 2.0, delay: 1.0, options: [.curveEaseIn], animations: {
            self.imageView.alpha = 0
        }, completion: {_ in
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(viewController, animated: false, completion: nil)
        })
    
    
    }
    
}
