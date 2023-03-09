//
//  ViewController.swift
//  3 UIAlertController
//
//  Created by Evgeniy Ustyan on 10.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hiLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//1 вариант
    @IBAction func showAlert(_ sender: Any) {
//        let alertController = UIAlertController(title: "Error", message: "Error massage", preferredStyle: .alert)
//        let action = UIAlertAction(title: "ok", style: .default) { (action) in
//            let text = alertController.textFields?.first?.text
//            print(text ?? "nil text")
//        }
//        alertController.addTextField()
//        alertController.addAction(action)
//        self.present(alertController, animated: true)
        self.hiLabel.text =  "Hi, "
        self.alert(title: "Внимание", message: "Сообщение", style: .alert )
        
    }
    
//2 вариант
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
            let textName = alertController.textFields?.first?.text
           
            if let textName = textName {
                self.hiLabel.text! += textName
            } else  {
                self.hiLabel.text! += "незнакомец"
            }
//            self.hiLabel.text! += (text?.text!)! + ("!")
            
//            print(text ?? "nil text")
        }
        alertController.addTextField { textField in
            textField.isSecureTextEntry = true
        }
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
}
