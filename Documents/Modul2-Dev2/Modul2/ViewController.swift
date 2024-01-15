//
//  ViewController.swift
//  Modul2
//
//  Created by Юрий Кузнецов on 13.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let authorizationLabel: UILabel = UILabel()
    var textLabel: UILabel = UILabel()
    var entryBtn: UIButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        
        //текст
        authorizationLabel.frame = CGRect(x: 33, y: 200, width: 201, height: 36)
        authorizationLabel.backgroundColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        authorizationLabel.text = "Авторизация"
        authorizationLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        authorizationLabel.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        view.addSubview(authorizationLabel)
        
        //текст
        textLabel.frame = CGRect(x: 33, y: 250, width: view.frame.width - 33, height: 50)
        textLabel.backgroundColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        textLabel.text = "Добро пожаловать в наше приложение, необходимо авторизоваться"
        textLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        textLabel.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        textLabel.numberOfLines = 0
        view.addSubview(textLabel)
        
        let mailEntryText = newTextField (text: "Email", offsetY: 80)
        let passwordEntryText = newTextField (text: "Пароль", offsetY: 15)
        let registrationBtn = newBtn (setTitle: "Регистрация", offsetY: 120, iscenter: true)
        let forgottenPasswordBtn = newBtn (setTitle: "Забыли пароль?")
        
        view.addSubview(mailEntryText)
        view.addSubview(passwordEntryText)
        view.addSubview(btn)
        view.addSubview(registrationBtn)
        view.addSubview(forgottenPasswordBtn)
        
    }

    func newTextField (text: String, offsetY: Double = 0) -> UITextField{
        let offsetview = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 50))
        let textField = UITextField()
        textField.frame.size = CGSize(width: view.frame.width - 66, height: 50)
        textField.center.x = view.center.x
        textField.center.y = view.center.y - offsetY
        textField.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        textField.text = text
        textField.textColor = UIColor(red: 164/255, green: 164/255, blue: 164/255, alpha: 1)
        textField.layer.cornerRadius = 25
        textField.clipsToBounds = true
        textField.leftView = offsetview
        textField.leftViewMode = .always
        return textField
    }
    
    lazy var btn: UIButton = {
        let entryBtn = UIButton(primaryAction: btnAction)
        entryBtn.frame = CGRect(x: 33, y: view.frame.height - 420, width: view.frame.width - 66, height: 50)
        entryBtn.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        entryBtn.tintColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        entryBtn.setTitle("Войти", for: .normal)
        entryBtn.layer.cornerRadius = 30
        entryBtn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return entryBtn
    }()
    
    let btnAction: UIAction = UIAction { entryBtn in
    }
    
    func newBtn (setTitle: String, offsetY: Double = 0, iscenter: Bool = false) -> UIButton{
        let btnn = UIButton()
        btnn.frame = CGRect(x: 33, y: view.frame.height - 100, width: view.frame.width - 66, height: 50)
        btnn.center.x = view.center.x
        if iscenter {
            btnn.center.y = view.center.y + offsetY
        }
        btnn.setTitle(String(setTitle), for: .normal)
        btnn.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        return btnn
    }
}


