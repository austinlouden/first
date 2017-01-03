//
//  ViewController.swift
//  First
//
//  Created by Austin Louden on 3/22/16.
//  Copyright © 2016 Austin Louden. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let label = UILabel()
    let textField = UITextField()
    let button = UIButton(type: .roundedRect)
    
    init() {
        super.init(nibName: nil, bundle: nil)

        label.text = "hello!"
        
        textField.delegate = self
        textField.borderStyle = .roundedRect
        
        button.addTarget(self, action: #selector(ViewController.buttonPressed), for: .touchUpInside)
        button.setTitle("Set Default Label Text", for: UIControlState())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        label.frame = CGRect(x: 20, y: 40, width: self.view.frame.width - 40, height: 20)
        self.view.addSubview(label)
        
        textField.frame = CGRect(x: 20, y: label.frame.maxY + 10, width: self.view.frame.width - 40, height: 30)
        self.view.addSubview(textField)
        
        button.frame = CGRect(x: 20, y: textField.frame.maxY + 10, width: self.view.frame.width - 40, height: 30)
        self.view.addSubview(button)
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        label.text = textField.text
        return false
    }
    
    func buttonPressed() {
        label.text = "hello!"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

