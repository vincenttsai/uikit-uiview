//
//  ViewController.swift
//  HelloView
//
//  Created by Vincent on 2023/7/16.
//

import UIKit

class ViewController: UIViewController {

    let view1 = MyView(text: "1")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.frame = CGRect(x: 150, y: 150, width: 100, height: 100)
        view1.backgroundColor = .blue
        self.view.addSubview(view1)
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(ViewController.pan(gesture:)))
        view1.addGestureRecognizer(gesture)
        
        
        let view2 = MyView(text: "2")
        view2.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        view2.backgroundColor = .red
        //self.view.addSubview(view2)
        view1.addSubview(view2)
        
        //self.view -> view1
        //          -> view2
        //print(self.view.subviews)
        
        //self.view -> view1 -> view2
        
        view1.isUserInteractionEnabled = false
        //view1.isHidden = true
        
        //shadow
        view1.layer.shadowOpacity = 1
        view1.layer.shadowColor = UIColor.darkGray.cgColor
        view1.layer.shadowOffset = CGSize(width: 5, height: 5)
        //UIKit Objc <- Core Graphic framework C
    }
    
    @objc func pan(gesture : UIPanGestureRecognizer) {
        
        switch gesture.state {
        case .changed:
            view1.backgroundColor = .green
            let center  = gesture.location(in: self.view)
            view1.center = center
        case .ended:
            view1.backgroundColor = .blue
        default:
            return
        }
        
    }

}

