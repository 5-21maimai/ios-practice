//
//  SecondViewController.swift
//  TestProject
//
//  Created by 松居麻衣 on 2020/05/23.
//  Copyright © 2020 松居麻衣. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    private var myButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
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
        myButton.setTitle("ボタン(通常)", for: .normal)
        myButton.setTitleColor(UIColor.white, for: .normal)

        // タイトルを設定する(ボタンがハイライトされた時).
        myButton.setTitle("ボタン(押された時)", for: .highlighted)
        myButton.setTitleColor(UIColor.black, for: .highlighted)

        // ボタンにタグをつける.
        myButton.tag = 1

        // イベントを追加する
        myButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchUpInside)

        // ボタンをViewに追加.
        self.view.addSubview(myButton)
    }

    /*
     ボタンのイベント.
     */
    @objc internal func onClickMyButton(sender: UIButton) {
        print("onClickMyButton:");
        print("sender.currentTitle: \(String(describing: sender.currentTitle))")
        print("sender.tag: \(sender.tag)")
    }

}
