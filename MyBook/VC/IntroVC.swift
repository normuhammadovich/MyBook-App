//
//  IntroVC.swift
//  MyBook
//
//  Created by Chingiz Jumanov on 28/11/22.
//

import UIKit

class IntroVC: UIViewController {
    
    
    @IBOutlet weak var introImg: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var descLbl: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    var intro: [IntroDM] = [
    IntroDM(title: "Manage your tasks", description: "You can easily manage all of your daily tasks in DoMe for free", imgStr: "firstIntro"),
    IntroDM(title: "Create daily routine", description: "In Uptodo  you can create your personalized routine to stay productive", imgStr: "secondIntro"),
    IntroDM(title: "Orgonaize your tasks", description: "You can organize your daily tasks by adding your tasks into separate categories", imgStr: "thirdIntro")
    ]
    
    var currentScreen = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setIntro(current: currentScreen)

    }

    //MARK: - setIntro func
    func setIntro(current screen: Int) {
        guard screen >= 0 && screen <= 2  else { return }
        introImg.image = intro[screen].image
        titleLbl.text = intro[screen].title
        descLbl.text = intro[screen].description
        if screen == 2 {
            nextBtn.setTitle("GET STARTED", for: .normal)
        } else {
            nextBtn.setTitle("NEXT", for: .normal)
        }
        
    }
    
    
    @IBAction func nextTapped(_ sender: UIButton) {
        guard currentScreen < 2 else { return }
        currentScreen += 1
        setIntro(current: currentScreen)
    }
    
    @IBAction func backTapped(_ sender: UIButton) {
        guard currentScreen > 0 else { return }
        currentScreen -= 1
        setIntro(current: currentScreen)
        
    }
    
    @IBAction func skipTapped(_ sender: UIButton) {
        
    }
    
    
    
}
