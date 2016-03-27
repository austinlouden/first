//
//  ViewController.swift
//  First
//
//  Created by Austin Louden on 3/22/16.
//  Copyright © 2016 Austin Louden. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let label: UILabel
    let textField: UITextField
    let button: UIButton
    
    init() {
        label = UILabel()
        label.text = "hello!"
        
        textField = UITextField()
        textField.borderStyle = .RoundedRect

        button = UIButton(type: .RoundedRect)
        button.setTitle("Set Default Label Text", forState: .Normal)

        super.init(nibName: nil, bundle: nil)
        
        textField.delegate = self
        button.addTarget(self, action: #selector(ViewController.buttonPressed), forControlEvents: .TouchUpInside)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        label.frame = CGRectMake(20, 40, CGRectGetWidth(self.view.frame) - 40, 20)
        self.view.addSubview(label)
        
        textField.frame = CGRectMake(20, CGRectGetMaxY(label.frame) + 10, CGRectGetWidth(self.view.frame) - 40, 30)
        self.view.addSubview(textField)
        
        button.frame = CGRectMake(20, CGRectGetMaxY(textField.frame) + 10, CGRectGetWidth(self.view.frame) - 40, 30)
        self.view.addSubview(button)
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
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

