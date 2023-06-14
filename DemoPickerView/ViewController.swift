//
//  ViewController.swift
//  DemoPickerView
//
//  Created by 현명 on 2023/06/14.
//

import UIKit

class ViewController: UIViewController,
  UIPickerViewDelegate, UIPickerViewDataSource {
    
    //배열
    var device = ["아이폰", "아이패드", "윈도우폰", "안드로이드"]
    
    @IBOutlet var picker: UIPickerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //누가 위임받은객체인가
        picker.delegate = self  // ViewController인 내가 책임질께
        picker.dataSource = self 
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //컬럼의 개수
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //행의 개수
        return device.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            //해당 행에 출력되는 문자열
            return device[row]
        }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(device[row])
    }

}

