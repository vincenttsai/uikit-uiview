//
//  MyView.swift
//  HelloView
//
//  Created by Vincent on 2023/7/16.
//

import UIKit

class MyView: UIView {

    var text : String
    init(text: String) {
        self.text = text
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20),NSAttributedString.Key.foregroundColor : UIColor.orange]
        self.text.draw(at: CGPoint.zero, withAttributes: attributes)
        
        
    }
    /*
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = .red
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = .green
        if let touch = touches.first {
            let point = touch.location(in: self.superview)
            self.center = point
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = .blue
    }
     */
}
