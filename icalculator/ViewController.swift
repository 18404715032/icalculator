//
//  ViewController.swift
//  icalculator
//
//  缓存cache
//  Created by 杨浩 on 16/6/22.
//  Copyright © 2016年 杨浩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Display = ""
    var cache = 0.0
    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var z: UITextField!
    @IBAction func add(sender: AnyObject) {
    }
    @IBAction func reduce(sender: AnyObject) {
    }
    @IBAction func ride(sender: AnyObject) {
    }
    @IBAction func except(sender: AnyObject) {
    }
    @IBAction func clear(sender: AnyObject) {
        Display = ""
        self.x.text = ""
    }
    @IBAction func h1(sender: AnyObject) {
        click("1")
    }
    @IBAction func h2(sender: AnyObject) {
        click("2")
    }
    @IBAction func h3(sender: AnyObject) {
        click("3")
    }
    @IBAction func h4(sender: AnyObject) {
        click("4")
    }
    @IBAction func h5(sender: AnyObject) {
        click("5")
    }
    @IBAction func h6(sender: AnyObject) {
       click("6")
    }
    @IBAction func h7(sender: AnyObject) {
        click("7")
    }
    @IBAction func h8(sender: AnyObject) {
        click("8")
    }
    @IBAction func h9(sender: AnyObject) {
        click("9")
    }
    @IBAction func h0(sender: AnyObject) {
        click("0")
    }
    @IBAction func dit(sender: AnyObject) {
        click(".")
    }

    @IBAction func equal(sender: AnyObject) {
    }
    func click (number:String){
        Display += number
        self.x.text = Display
    }
    
    func evaluation(){
        if !Display.isEmpty{
            let P = Display as NSString
            cache = P.doubleValue
            Display = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

