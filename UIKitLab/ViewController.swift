//
//  ViewController.swift
//  UIKitLab
//
//  Created by janet on 2016/7/4.
//  Copyright © 2016年 janet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initUITextView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func initUITextView() {
        let myTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        
        myTextField.placeholder = "請輸入文字"
        myTextField.borderStyle = .RoundedRect
        myTextField.clearButtonMode = .WhileEditing
        myTextField.keyboardType = .EmailAddress
        myTextField.returnKeyType = .Done
        myTextField.textColor = UIColor.whiteColor()
        myTextField.backgroundColor = UIColor.lightGrayColor()
        let fullScreen = UIScreen.mainScreen().bounds.size

        myTextField.center = CGPoint(x: fullScreen.width * 0.5, y: fullScreen.height * 0.5)
        self.view.addSubview(myTextField)
        
        let myTextView = UITextView(frame: CGRect(x: 0, y: 0, width: 250, height: 200))
        myTextView.backgroundColor = UIColor.darkGrayColor()
        myTextView.textColor = UIColor.whiteColor()
        myTextView.font = UIFont(name: "Helvetica-Light", size: 20)
        myTextView.textAlignment = .Left
        myTextView.text = "Swift 起步走"
        myTextView.keyboardType = .Default
        myTextView.returnKeyType = .Default
        
        myTextView.editable = true
        myTextView.selectable = true
        
        myTextView.center = CGPoint(x: fullScreen.width * 0.5, y: fullScreen.height * 0.3)
        
        self.view.addSubview(myTextView)
    }
}

