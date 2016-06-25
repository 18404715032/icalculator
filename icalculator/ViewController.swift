//
//  ViewController.swift
//  icalculator
//
//  缓存cache
//  Created by 杨浩 on 16/6/22.
//  Copyright © 2016年 杨浩. All rights reserved.
//  Display 显示缓存

import UIKit

class ViewController: UIViewController {

    var Display = ""
 //   var cache = 0.0
    var one:Double=0.0
    var two:Double=0.0
    var b_fuzhi:Bool=false
    var b_state:Bool=false
    var b_dian:Bool=false
    var result:Double=0.0
    
    
    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var z: UITextField!
    @IBAction func add(sender: AnyObject) {
        ys("add")
    }
    @IBAction func reduce(sender: AnyObject) {
        ys("reduce")
    }
    @IBAction func ride(sender: AnyObject) {
        ys("ride")
    }
    @IBAction func except(sender: AnyObject) {
        ys("except")
    }
    @IBAction func clear(sender: AnyObject) {
        result=0.0
        one=0.0
        two=0.0
        Display=""
        b_fuzhi=false
        b_state=false
        b_dian=false
        x.text="0.0"
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
        if(b_state==true){
            two=0
        }
        evaluation()
        if(fuhao=="add"){
            result=one+two        }
        else if(fuhao=="reduce"){
            result=one-two
        }
        else if(fuhao=="ride"){
            result=one*two        }
        else if(fuhao=="except"){
            result=one/two
        }
        else{
            result=one
        }
        b_fuzhi=false
        b_state=false
        x.text="\(result)"
    }
    func click (number:String){
        Display += number
        self.x.text = Display
    }
    
    
    func evaluation/*qiuzhi*/(){
        if(b_fuzhi==false){
            one=(x.text! as NSString).doubleValue
            b_fuzhi=true
        }
        else{
            two=(x.text! as NSString).doubleValue
            b_fuzhi=true
        }
        
    }
    var fuhao:String=""
    func ys(fu:String){
        evaluation()
        fuhao=fu
        b_state=false
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

