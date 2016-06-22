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

    var 显示缓存 = ""
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
        显示缓存 = ""
        self.x.text = ""
    }
    @IBAction func 一(sender: AnyObject) {
        按("1")
    }
    @IBAction func 二(sender: AnyObject) {
        按("2")
    }
    @IBAction func 三(sender: AnyObject) {
        按("3")
    }
    @IBAction func 四(sender: AnyObject) {
        按("4")
    }
    @IBAction func 五(sender: AnyObject) {
        按("5")
    }
    @IBAction func 六(sender: AnyObject) {
        按("6")
    }
    @IBAction func 七(sender: AnyObject) {
        按("7")
    }
    @IBAction func 八(sender: AnyObject) {
        按("8")
    }
    @IBAction func 九(sender: AnyObject) {
        按("9")
    }
    @IBAction func 零(sender: AnyObject) {
        按("0")
    }
    @IBAction func 点(sender: AnyObject) {
        按(".")
    }
    @IBAction func 等于(sender: AnyObject) {
    }
    func 按(number:String){
        显示缓存 += number
        self.x.text = 显示缓存
    }
    
    func 求值(){
        if !显示缓存.isEmpty{
            let P = 显示缓存 as NSString
            cache = P.doubleValue
            显示缓存 = ""
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

