//
//  ViewController.swift
//  Modul2
//
//  Created by Юрий Кузнецов on 09.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var FirstName: UILabel!
    @IBOutlet weak var textName: UITextField!
    @IBOutlet var LastName: UILabel!
    @IBOutlet weak var textLast: UITextField!
    @IBOutlet var MyGroup: UILabel!
    @IBOutlet weak var textGroup: UITextField!
    @IBOutlet weak var btnName: UIButton!
    @IBOutlet weak var btnLast: UIButton!
    @IBOutlet weak var btnMyGroup: UIButton!
    @IBOutlet var btnNext: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        btnName.backgroundColor = .green
        btnName.tintColor = .white
        btnLast.backgroundColor = .blue
        btnLast.tintColor = .white
        btnMyGroup.backgroundColor = .black
        btnMyGroup.tintColor = .white
        btnNext.tintColor = .white
    }


    @IBAction func nBtn(_ sender: Any) {
        textName.text = "Юрий"
    }
    
    @IBAction func lBtn(_ sender: Any) {
        textLast.text = "Кузнецов"
    }
    
    @IBAction func gBtn(_ sender: Any) {
        textGroup.text = "6 группа"
    }
}

