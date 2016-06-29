//
//  ViewController.swift
//  test
//
//  Created by 李晓晋 on 16/6/22.
//  Copyright © 2016年 李晓晋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var Text: UITextField!
    var flag:Int=0;
    var temp:Double=0.0;
    var xiaoshudian = true
    @IBAction func zero(sender: AnyObject) {
        if(Text.text=="0")
        {
            Text.text=(Text.text)!+"";
        }
        else
        {
            Text.text=(Text.text)!+"0";
        }

        
    }
    @IBAction func one(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"1"
            
        }
        else
        {
            Text.text=(Text.text)!+"1";
        }
    }
    @IBAction func two(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"2"
            
        }
        else
        {
            Text.text=(Text.text)!+"2";
        }
    }
    @IBAction func three(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"3"
            
        }
        else
        {
            Text.text=(Text.text)!+"3";
        }
    }
    @IBAction func four(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"4"
            
        }
        else
        {
            Text.text=(Text.text)!+"4";
        }
    }
    @IBAction func five(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"5"
            
        }
        else
        {
            Text.text=(Text.text)!+"5";
        }
    }
    
    @IBAction func six(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"6"
            
        }
        else
        {
            Text.text=(Text.text)!+"6";
        }
    }
    @IBAction func seven(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"7"
            
        }
        else
        {
            Text.text=(Text.text)!+"7";
        }
    }
   
    @IBAction func eight(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"8"
            
        }
        else
        {
            Text.text=(Text.text)!+"8";
        }
    }
    @IBAction func nine(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"9"
            
        }
        else
        {
            Text.text=(Text.text)!+"9";
        }
    }
    @IBAction func point(sender: AnyObject) {
        if xiaoshudian == true  {
            
            Text.text=(Text.text)!+"."
            xiaoshudian = false
            }
        else
        {
            Text.text=(Text.text)!+"";
        }
       
        
    }
    @IBAction func add(sender: AnyObject) {
        if flag==0{
            temp=(Double)(Text.text!)!
            Text.text=""
            xiaoshudian = true

        }
        flag=1
    }
    
    @IBAction func subract(sender: AnyObject) {
        if flag==0{
            temp=(Double)(Text.text!)!
            Text.text=""
            xiaoshudian = true

        }
        flag=2

    }
    @IBAction func ride(sender: AnyObject) {
        if flag==0{
            temp=(Double)(Text.text!)!
            Text.text=""
            xiaoshudian = true

        }
        flag=3

    }
    @IBAction func divide(sender: AnyObject) {
        if flag==0{
            temp=(Double)(Text.text!)!
            Text.text=""
            xiaoshudian = true
        }
        flag=4

    }
    
    @IBAction func percent(sender: AnyObject) {
       
        var x=0.0
        
        
        if  flag==1||flag==2||flag==3||flag==4{
            switch  flag{
            case 1:
                x=temp*(Double)(Text.text!)!/100
                temp=temp+x
                Text.text="\(temp)"
            case 2:
                x=temp*(Double)(Text.text!)!/100
                temp=temp-x
                Text.text="\(temp)"

            case 3:
                x=temp*(Double)(Text.text!)!/100
                temp=temp*x
                Text.text="\(temp)"
            case 4:
                if(Double)(Text.text!)!==0
                {
                    Text.text="o不能为除数"
                }
                else{
                    x=temp*(Double)(Text.text!)!/100
                    temp=temp/x
                    Text.text="\(temp)"                }
            default:
                break
            }
           xiaoshudian = true
        }
        else{
        temp=(Double)(Text.text!)!
        temp=temp/100
        Text.text="\(temp)"}

    }
    @IBAction func exchange(sender: AnyObject) {
        temp=(Double)(Text.text!)!
        temp=(-temp)
        Text.text="\(temp)"
        xiaoshudian = true
    }
    @IBAction func clean(sender: AnyObject) {
        
        Text.text=""
        temp=0
        flag=0
        xiaoshudian = true
        
        
    }
    
    @IBAction func reciprocal(sender: AnyObject) {
        temp=(Double)(Text.text!)!
        temp=1/temp
        Text.text="\(temp)"
        xiaoshudian = true
        
    }
    
    @IBAction func square(sender: AnyObject) {
        temp=(Double)(Text.text!)!
        temp=temp*temp
        Text.text="\(temp)"
        xiaoshudian = true
    }

    
    @IBAction func squa(sender: AnyObject) {
        temp=(Double)(Text.text!)!
        temp=sqrt(temp)
        Text.text="\(temp)"
        xiaoshudian = true
        
    }
    @IBAction func back(sender: AnyObject) {
        var s=""
        s = Text.text!
        s.removeAtIndex(s.endIndex.predecessor())
        Text.text=s
        xiaoshudian = true
    }
    @IBAction func equal(sender: AnyObject) {
        switch  flag{
        case 1:
            temp=temp+(Double)(Text.text!)!
            Text.text="\(temp)"
        case 2:
            temp=temp-(Double)(Text.text!)!
            Text.text="\(temp)"
        case 3:
            temp=temp*(Double)(Text.text!)!
            Text.text="\(temp)"
        case 4:
            if(Double)(Text.text!)!==0
            {
                Text.text="o不能为除数"
            }
            else{
                temp=temp/(Double)(Text.text!)!
                Text.text="\(temp)"
            }
        default:
            break
        }
    }
    
}

