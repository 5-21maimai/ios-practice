//
//  ViewController.swift
//  TestProject
//
//  Created by 松居麻衣 on 2020/05/23.
//  Copyright © 2020 松居麻衣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var myButton: UIButton!
    private var myTextField: UITextField!
    
    private var freeword = ""
    private let dataStore = FreeTextDataStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // =================ボタン生成=================
        // Buttonを生成する.
        myButton = UIButton()

        // ボタンのサイズ.
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50

        // ボタンのX,Y座標.
        let posX: CGFloat = self.view.frame.width/2 - bWidth/2
        let posY: CGFloat = self.view.frame.height/2 - bHeight/2

        // ボタンの設置座標とサイズを設定する.
        myButton.frame = CGRect(x: posX, y: posY, width: bWidth, height: bHeight)

        // ボタンの背景色を設定.
        myButton.backgroundColor = UIColor.red

        // ボタンの枠を丸くする.
        myButton.layer.masksToBounds = true

        // コーナーの半径を設定する.
        myButton.layer.cornerRadius = 20.0

        // タイトルを設定する(通常時).
        myButton.setTitle("保存する", for: .normal)
        myButton.setTitleColor(UIColor.white, for: .normal)

        // タイトルを設定する(ボタンがハイライトされた時)
        myButton.setTitleColor(UIColor.black, for: .highlighted)

        // ボタンにタグをつける.
        myButton.tag = 1

        // イベントを追加する
        myButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchUpInside)

        // ボタンをViewに追加.
        self.view.addSubview(myButton)
        
        // ==================================
        
        // =================テキストフィールド生成=================
        // UITextFieldの配置するx,yと幅と高さを設定.
        let tWidth: CGFloat = 200
        let tHeight: CGFloat = 30
        let tX: CGFloat = (self.view.bounds.width - tWidth)/2
        let tY: CGFloat = (self.view.bounds.height - tHeight)/2 - 80

        // UITextFieldを作成する.
        myTextField = UITextField(frame: CGRect(x: tX, y: tY, width: tWidth, height: tHeight))

        // 表示する文字を代入する.
        myTextField.text = dataStore.loadText()

        // 枠を表示する.
        myTextField.borderStyle = .roundedRect

        // クリアボタンを追加.
        myTextField.clearButtonMode = .whileEditing

        // Viewに追加する
        self.view.addSubview(myTextField)
        
        // ==================================
    }

    /*
     ボタンのイベント.
     */
    @objc internal func onClickMyButton(sender: UIButton) {
        dataStore.save(text: myTextField.text ?? "")

    }

}
