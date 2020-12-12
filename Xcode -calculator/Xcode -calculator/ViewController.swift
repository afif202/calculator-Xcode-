//
//  ViewController.swift
//  Xcode -calculator
//
//  Created by macbook on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var hasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmatik: "+")
    }
    
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmatik: "-")
    }
    
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(aritmatik: "*")
    }
    
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(aritmatik: "/")
        
    }
    func hitung(aritmatik: String){
        if textField.text == "" || textField2.text == ""{
            hasil.text = "kolomnya harus di isi"
        }else{
            let input1 = Double(textField.text!)
            let input2 = Double(textField2.text!)
            var jumlah : Double?
            switch aritmatik {
            case "+":
                        jumlah = input1! + input2!
            case "-":
                        jumlah = input1! - input2!
            case "*":
                        jumlah = input1! * input2!
            case "/":
                        jumlah = input1! / input2!
                
            default:
                break
            }
              hasil.text = String(jumlah!)
            
            
            
        }
        
    }
}


