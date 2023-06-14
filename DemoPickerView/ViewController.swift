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
    
    
    @IBAction func clickAlert1(_ sender: Any) {
        
        //경고창 출력
        let alert = UIAlertController(title: "알림", message: "UlAlertController사용", preferredStyle: UIAlertController.Style.alert)
        //버튼 추가
        let cancelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel,
        handler: { (_) in
            print("취소를 선택")
        })
    
        
        
        alert.addAction(cancelAction)
        self.present(alert, animated: true)
    }
    
    
    @IBAction func clickAlert2(_ sender: Any) {
        
        //경고창 출력
        let alert = UIAlertController(title: "알림", message: "액션 시트 창", preferredStyle: .actionSheet)
        
        //버튼 추가
        let cancelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel,
        handler: { (_) in
            print("취소를 선택")
        })
    
        
        let saveAction = UIAlertAction(title: "저장", style: UIAlertAction.Style.destructive,
        handler: { (_) in
            print("저장을 선택")
        })
        
        alert.addAction(cancelAction)
        alert.addAction(saveAction)
        self.present(alert, animated: true)
        
        
        
    }
    
    
    
    
    
    
    

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

