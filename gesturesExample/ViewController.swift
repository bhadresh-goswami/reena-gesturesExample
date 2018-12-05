//
//  ViewController.swift
//  gesturesExample
//
//  Created by Mac on 04/12/18.
//  Copyright © 2018 tops. All rights reserved.
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


}


class TapViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var imgView1: UIImageView!
    
    var isTap = false
    @IBAction func tapOnImageGesture(_ sender: UITapGestureRecognizer) {
        
        //2 times tap on image
        
        if !isTap{
         
            imgView1.transform = CGAffineTransform.init(scaleX: 1.2, y: 1.2)
            
            isTap = true
            
        }
        else
        {
            
            imgView1.transform = CGAffineTransform.init(scaleX: 1.0, y: 1.0)
            
            isTap = false
        }
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


class PinchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var imgView1: UIImageView!
    
    @IBAction func pinchOnImageGestureAction(_ sender: UIPinchGestureRecognizer) {
        
        
        imgView1.transform = CGAffineTransform.init(scaleX: sender.scale, y: sender.scale)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



class PanGestureViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var imgView1: UIImageView!
    
    /////?????? can you hear me?? are you thr??
    		
    @IBAction func panOnImageGesture(_ sender: UIPanGestureRecognizer) {
        
        let points = sender.translation(in: self.view)
        
        imgView1.transform = CGAffineTransform.init(translationX: points.x, y: points.y)
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



class RotateGestureViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var imgView1: UIImageView!
    
    /////?????? can you hear me?? are you thr??
    
    @IBAction func RotationOnImageGesture(_ sender: UIRotationGestureRecognizer) {
        
        //let points = sender.translation(in: self.view)
        
        imgView1.transform = CGAffineTransform.init(rotationAngle: sender.rotation)
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



class SwipeGestureViewController: UIViewController {
    
    
    let arr = [#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var imgView1: UIImageView!
    
    /////?????? can you hear me?? are you thr??
    
    var c = 0
    
    @IBAction func LeftOnImageGesture(_ sender: UISwipeGestureRecognizer) {
        
        if c < 3{ //0 - 1 - 2 - 3
            c += 1
            print("Left Gesture \(c)")
            imgView1.image = arr[c]
        }
    }
    
    @IBAction func RightOnImageGesture(_ sender: UISwipeGestureRecognizer) {
        
        if c > 0{ // 3 - 2 - 1 - 0
            c -= 1
            print("Right Gesture \(c)")
            imgView1.image = arr[c]
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}








