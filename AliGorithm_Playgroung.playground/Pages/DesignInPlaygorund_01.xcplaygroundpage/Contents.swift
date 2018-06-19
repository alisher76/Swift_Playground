//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        label.text = "Learn to design in Playground"
        label.textColor = .black
        
        
        let cardView = UIView()
        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        cardView.backgroundColor = .white
        
        
        view.addSubview(cardView)
        view.addSubview(label)
        self.view = view
    }
}

PlaygroundPage.current.liveView = MyViewController()
//: [Next](@next)
