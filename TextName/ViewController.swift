//
//  ViewController.swift
//  TextName
//
//  Created by TJ on 2022/03/27.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblMessage: UILabel! //체크메세지
    
    var welcome = "welcome!" //화면에 출력되는 글씨	
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblWelcome.text = welcome
    }

    @IBAction func btnSend(_ sender: UIButton) {
    
        // 사용자가 이름을 입력했는지 체크
        if txtName.text!.count == 0 {
            lblMessage.text = "이름을 입력하세요!"
        }else{
            //이름을 작성했을때 메세지 삭제
            lblMessage.text?.removeAll()
            lblWelcome.text! += " \(txtName.text!)"
        }
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        
        txtName.text?.removeAll() //모두 지우고 텍스트필드에 글자가 남아있지 않도록 지움
        lblWelcome.text = welcome //화면에 출력되는글씨
        lblMessage.text?.removeAll()//클리어 눌렀을때 메세지 삭제
    }
    //아무대나 눌러서 키보드 지우기(커맨드 +K)
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    
    
    }
}
