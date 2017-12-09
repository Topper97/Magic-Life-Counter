//
//  ViewController.swift
//  Magic Life Counter
//
//  Created by Christopher Beaudoin on 9/2/17.
//  Copyright © 2017 Christopher Beaudoin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var purpleView: UIView!
    
    @IBOutlet weak var blueLife: UILabel!
    @IBOutlet weak var greenLife: UILabel!
    @IBOutlet weak var greenMinus: UILabel!
    @IBOutlet weak var purpleLife: UILabel!
    @IBOutlet weak var purpleMinus: UILabel!
    @IBOutlet weak var yellowLife: UILabel!
    @IBOutlet weak var yellowMinus: UILabel!
    @IBOutlet weak var orangeLife: UILabel!
    @IBOutlet weak var orangeMinus: UILabel!
    @IBOutlet weak var redLife: UILabel!
    @IBOutlet weak var redRoll: UIImageView!
    @IBOutlet weak var redDice: UIImageView!
    @IBOutlet weak var blueDice: UIImageView!
    @IBOutlet weak var purpleDice: UIImageView!
    @IBOutlet weak var greenDice: UIImageView!
    @IBOutlet weak var orangeDice: UIImageView!
    @IBOutlet weak var yellowDice: UIImageView!
    
    var red = 20
    var blue = 20
    var green = 20
    var yellow = 20
    var purple = 20
    var orange = 20
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLife.text = red.description
        blueLife.text = blue.description
        greenLife.text = green.description
        yellowLife.text = yellow.description
        purpleLife.text = purple.description
        orangeLife.text = orange.description
        
        redView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        greenLife.transform = CGAffineTransform(rotationAngle: CGFloat.pi*1.5)
        greenMinus.transform = CGAffineTransform(rotationAngle: CGFloat.pi*1.5)
        purpleLife.transform = CGAffineTransform(rotationAngle: CGFloat.pi*1.5)
        purpleMinus.transform = CGAffineTransform(rotationAngle: CGFloat.pi*1.5)
        yellowLife.transform = CGAffineTransform(rotationAngle: CGFloat.pi*0.5)
        yellowMinus.transform = CGAffineTransform(rotationAngle: CGFloat.pi*0.5)
        orangeLife.transform = CGAffineTransform(rotationAngle: CGFloat.pi*0.5)
        orangeMinus.transform = CGAffineTransform(rotationAngle: CGFloat.pi*0.5)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    fileprivate func hideDiceImages() {
        redLife.isHidden = false
        redDice.isHidden = true
        blueLife.isHidden = false
        blueDice.isHidden = true
        greenLife.isHidden = false
        greenDice.isHidden = true
        yellowLife.isHidden = false
        yellowDice.isHidden = true
        purpleLife.isHidden = false
        purpleDice.isHidden = true
        orangeLife.isHidden = false
        orangeDice.isHidden = true
    }
    
    @IBAction func redAdd(_ sender: Any) {
        if redLife.isHidden{
            hideDiceImages()
        }
        else{
            red+=1
            redLife.text = red.description
        }
    }
    
    @IBAction func redMinus(_ sender: Any) {
        if redLife.isHidden{
            hideDiceImages()
            
        }
        else{
            red-=1
            redLife.text = red.description
        }
    }
    @IBAction func blueAdd(_ sender: Any) {
        if blueLife.isHidden{
            hideDiceImages()
        }
        else{
            blue+=1
            blueLife.text = blue.description
        }
    }
    @IBAction func blueMinus(_ sender: Any) {
        if blueLife.isHidden{
            hideDiceImages()
            
        }
        else{
            blue-=1
            blueLife.text = blue.description
        }
    }
    @IBAction func greenAdd(_ sender: Any) {
        if greenLife.isHidden{
            hideDiceImages()
            
        }
        else{
            green+=1
            greenLife.text = green.description
        }
    }
    @IBAction func greenMinus(_ sender: Any) {
        if greenLife.isHidden{
            hideDiceImages()
            
        }
        else{
            green-=1
            greenLife.text = green.description
        }
    }
    @IBAction func yellowAdd(_ sender: Any) {
        if yellowLife.isHidden{
            hideDiceImages()
            
        }
        else{
            yellow+=1
            yellowLife.text = yellow.description
        }
    }
    @IBAction func yellowMinus(_ sender: Any) {
        if yellowLife.isHidden{
            hideDiceImages()
            
        }
        else{
            yellow-=1
            yellowLife.text = yellow.description
        }
    }
    @IBAction func orangeAdd(_ sender: Any) {
        if orangeLife.isHidden{
            hideDiceImages()
            
        }
        else{
            orange+=1
            orangeLife.text = orange.description
        }
    }
    @IBAction func orangeMinus(_ sender: Any) {
        if orangeLife.isHidden{
            hideDiceImages()
            
        }
        else{
            orange-=1
            orangeLife.text = orange.description
        }
    }
    @IBAction func purpleAdd(_ sender: Any) {
        if purpleLife.isHidden{
            hideDiceImages()
            
        }
        else{
            purple+=1
            purpleLife.text = purple.description
        }
    }
    @IBAction func purpleMinus(_ sender: Any) {
        if purpleLife.isHidden{
            hideDiceImages()
            
        }
        else{
            purple-=1
            purpleLife.text = purple.description
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        let alert = UIAlertController(title: "Life", message: "Choose Starting Life", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "20", style: .default, handler: {(action) -> Void in DispatchQueue.main.async {
            self.red = 20
            self.blue = 20
            self.green = 20
            self.yellow = 20
            self.purple = 20
            self.orange = 20
            self.redLife.text = self.red.description
            self.blueLife.text = self.blue.description
            self.greenLife.text = self.green.description
            self.yellowLife.text = self.yellow.description
            self.purpleLife.text = self.purple.description
            self.orangeLife.text = self.orange.description
            }}))
        alert.addAction(UIAlertAction(title: "30", style: .default, handler: {(action) -> Void in DispatchQueue.main.async {
            self.red = 30
            self.blue = 30
            self.green = 30
            self.yellow = 30
            self.purple = 30
            self.orange = 30
            self.redLife.text = self.red.description
            self.blueLife.text = self.blue.description
            self.greenLife.text = self.green.description
            self.yellowLife.text = self.yellow.description
            self.purpleLife.text = self.purple.description
            self.orangeLife.text = self.orange.description
            }}))
        alert.addAction(UIAlertAction(title: "40", style: .default, handler: {(action) -> Void in DispatchQueue.main.async {
            self.red = 40
            self.blue = 40
            self.green = 40
            self.yellow = 40
            self.purple = 40
            self.orange = 40
            self.redLife.text = self.red.description
            self.blueLife.text = self.blue.description
            self.greenLife.text = self.green.description
            self.yellowLife.text = self.yellow.description
            self.purpleLife.text = self.purple.description
            self.orangeLife.text = self.orange.description
            }}))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: {(action) -> Void in }))

        present(alert, animated: true, completion: nil)
        

        
        hideDiceImages()
    }
    
    @IBAction func flipCoin(_ sender: Any) {
        let num = Int(arc4random_uniform(2))
        var message = ""
        if num == 1
            {message = "Heads"}
        else
            {message = "Tails"}
        
        let alertController = UIAlertController(title: "Coin Flip", message: message,preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Play", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func rollDice(_ sender: Any) {
        var redRoll = 0
        var blueRoll = 0
        var greenRoll = 0
        var yellowRoll = 0
        var purpleRoll = 0
        var orangeRoll = 0
        
        redRoll = Int(arc4random_uniform(6) + 1)
        blueRoll = Int(arc4random_uniform(6) + 1)
        greenRoll = Int(arc4random_uniform(6) + 1)
        yellowRoll = Int(arc4random_uniform(6) + 1)
        purpleRoll = Int(arc4random_uniform(6) + 1)
        orangeRoll = Int(arc4random_uniform(6) + 1)
        
        _ = UIImage(named: "Images/one.png")
        _ = UIImage(named: "Images/two.png")
        _ = UIImage(named: "Images/three.png")
        _ = UIImage(named: "Images/four.png")
        _ = UIImage(named: "Images/five.png")
        _ = UIImage(named: "Images/six.png")
        
        switch redRoll {
        case 1:
            redDice.image = UIImage(named: "one")
        case 2:
            redDice.image = UIImage(named: "two")
        case 3:
            redDice.image = UIImage(named: "three")
        case 4:
            redDice.image = UIImage(named: "four")
        case 5:
            redDice.image = UIImage(named: "five")
        case 6:
            redDice.image = UIImage(named: "six")
        default:
            redRoll = redRoll + 1 - 1
        }
        
        switch blueRoll {
        case 1:
            blueDice.image = UIImage(named: "one")
        case 2:
            blueDice.image = UIImage(named: "two")
        case 3:
            blueDice.image = UIImage(named: "three")
        case 4:
            blueDice.image = UIImage(named: "four")
        case 5:
            blueDice.image = UIImage(named: "five")
        case 6:
            blueDice.image = UIImage(named: "six")
        default:
            blueRoll = blueRoll + 1 - 1
        }
        
        switch greenRoll {
        case 1:
            greenDice.image = UIImage(named: "one")
        case 2:
            greenDice.image = UIImage(named: "two")
        case 3:
            greenDice.image = UIImage(named: "three")
        case 4:
            greenDice.image = UIImage(named: "four")
        case 5:
            greenDice.image = UIImage(named: "five")
        case 6:
            greenDice.image = UIImage(named: "six")
        default:
            greenRoll = greenRoll + 1 - 1
        }
        
        switch yellowRoll {
        case 1:
            yellowDice.image = UIImage(named: "one")
        case 2:
            yellowDice.image = UIImage(named: "two")
        case 3:
            yellowDice.image = UIImage(named: "three")
        case 4:
            yellowDice.image = UIImage(named: "four")
        case 5:
            yellowDice.image = UIImage(named: "five")
        case 6:
            yellowDice.image = UIImage(named: "six")
        default:
            yellowRoll = yellowRoll + 1 - 1
        }
        
        switch purpleRoll {
        case 1:
            purpleDice.image = UIImage(named: "one")
        case 2:
            purpleDice.image = UIImage(named: "two")
        case 3:
            purpleDice.image = UIImage(named: "three")
        case 4:
            purpleDice.image = UIImage(named: "four")
        case 5:
            purpleDice.image = UIImage(named: "five")
        case 6:
            purpleDice.image = UIImage(named: "six")
        default:
            purpleRoll = purpleRoll + 1 - 1
        }
        
        switch orangeRoll {
        case 1:
            orangeDice.image = UIImage(named: "one")
        case 2:
            orangeDice.image = UIImage(named: "two")
        case 3:
            orangeDice.image = UIImage(named: "three")
        case 4:
            orangeDice.image = UIImage(named: "four")
        case 5:
            orangeDice.image = UIImage(named: "five")
        case 6:
            orangeDice.image = UIImage(named: "six")
        default:
            orangeRoll = orangeRoll + 1 - 1
        }
        
        redDice.isHidden=false
        redLife.isHidden=true
        blueDice.isHidden=false
        blueLife.isHidden=true
        greenDice.isHidden=false
        greenLife.isHidden=true
        yellowDice.isHidden=false
        yellowLife.isHidden=true
        purpleDice.isHidden=false
        purpleLife.isHidden=true
        orangeDice.isHidden=false
        orangeLife.isHidden=true
        
    }
    @IBAction func selectPlayers(_ sender: UIButton) {
        let alert = UIAlertController(title: "Players", message: "Choose Number of Players", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "2", style: .default, handler: {(action) -> Void in DispatchQueue.main.async {
            self.redView.isHidden = false
            self.blueView.isHidden = false
            self.greenView.isHidden = true
            self.yellowView.isHidden = true
            self.purpleView.isHidden = true
            self.orangeView.isHidden = true
            self.hideDiceImages()

            }}))
        alert.addAction(UIAlertAction(title: "3", style: .default, handler: {(action) -> Void in DispatchQueue.main.async {
            self.redView.isHidden = true
            self.blueView.isHidden = false
            self.greenView.isHidden = false
            self.yellowView.isHidden = false
            self.purpleView.isHidden = true
            self.orangeView.isHidden = true
            self.hideDiceImages()
            }}))
        alert.addAction(UIAlertAction(title: "4", style: .default, handler: {(action) -> Void in DispatchQueue.main.async {
            self.redView.isHidden = true
            self.blueView.isHidden = true
            self.greenView.isHidden = false
            self.yellowView.isHidden = false
            self.purpleView.isHidden = false
            self.orangeView.isHidden = false
            self.hideDiceImages()
            }}))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: {(action) -> Void in }))
        
        present(alert, animated: true, completion: nil)

    }
}

