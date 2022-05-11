//
//  ResultViewController.swift
//  gacha
//
//  Created by 八森聖人 on 2022/05/12.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let number = Int.random(in: 0..<10)
        monsterArray = [
            UIImage(named: "monster001.png")!,
            UIImage(named: "monster002.png")!,
            UIImage(named: "monster003.png")!,
            UIImage(named: "monster004.png")!,
            UIImage(named: "monster005.png")!,
            UIImage(named: "monster006.png")!,
            UIImage(named: "monster007.png")!,
            UIImage(named: "monster008.png")!,
            UIImage(named: "monster009.png")!,
            UIImage(named: "monster010.png")!
        ]
        monsterImageView.image = monsterArray[number]
        monsterImageView.alpha = 0.0
        
        if number == 9 {
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        } else if number > 6 {
            haikeiImageView.image = UIImage(named: "bg_red.png")
        } else {
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let haikei_animation = CABasicAnimation(keyPath: "transform")
        haikei_animation.fromValue = NSNumber(value: 0)
        haikei_animation.toValue = NSNumber(value: 2 * Double.pi)
        haikei_animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        haikei_animation.duration = 8
        haikei_animation.repeatCount = Float.infinity
        haikeiImageView.layer.add(haikei_animation, forKey: nil)
        
    
        
        monsterImageView.alpha = 0.0
        UIView.animate(withDuration: 2.0, delay: 0, options: [.curveEaseIn], animations: {
            self.monsterImageView.alpha = 1.0
        }, completion: nil)
    }

    @IBOutlet weak var haikeiImageView: UIImageView!
    @IBOutlet weak var monsterImageView: UIImageView!
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var monsterArray: [UIImage]!

}
