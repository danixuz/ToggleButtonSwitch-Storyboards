//
//  ViewController.swift
//  Eluxon
//
//  Created by Daniel Spalek on 05/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    // If we want to change what elements look like , we need an outlet for them
    @IBOutlet weak var onOffLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle() // the mutating function in the enum can change the value of our SwitchStatus instance.
        if switchStatus == .off {
            view.backgroundColor = .darkGray
            onOffLbl.text = "🌚 OFF 🌚" // using the outlet to change the label text and color
            onOffLbl.textColor = .white
            // changing button colors
            toggleBtn.backgroundColor = .white
            toggleBtn.setTitleColor(.black, for: .normal)
        }else{
            view.backgroundColor = .white
            onOffLbl.text = "🌝 ON 🌝"
            onOffLbl.textColor = .darkGray
            // changing button colors
            toggleBtn.backgroundColor = .black
            toggleBtn.setTitleColor(.white, for: .normal)
        }
    }
    

}

