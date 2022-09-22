//
//  ViewController.swift
//  ДЗ 6 Frame
//
//  Created by Светлана on 14.09.22.
//

import UIKit

class ViewController: UIViewController {
    
      let circleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        circleView.frame = CGRect(x: 100, y: 150, width: 50, height: 50)
        circleView.layer.cornerRadius = 25
        circleView.backgroundColor = .random
        
        view.addSubview(circleView)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(gestureFunc))
        circleView.addGestureRecognizer(gesture)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @objc func gestureFunc() {
        print("Tap")
        
        circleView.backgroundColor = .random
        
        let height = view.frame.size.height
        let width = view.frame.size.width
    
        circleView.frame.origin.x = CGFloat.random(in: 30 ... (width - 50))
        circleView.frame.origin.y = CGFloat.random(in: 30 ... (height - 80))
         
    }
}

