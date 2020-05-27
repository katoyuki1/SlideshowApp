//
//  ViewController.swift
//  SlideshowApp
//
//  Created by katoyuki on 2020/05/20.
//  Copyright © 2020 yuki.kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    // 進む
    @IBOutlet weak var nextButton: UIButton!
    // 戻る
    @IBOutlet weak var backButton: UIButton!
    // 再生・停止
    @IBOutlet weak var switchButton: UIButton!
    
    // 表示している画像の番号
    var displayImageNo = 0
    // 画像の名前の配列
    let imageNameArray = ["cat01", "cat02", "cat03"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //
        /* 初期画面
         バンドルした画像ファイルを読み込み
         Image Viewに画像を設定
         */
        let image = UIImage(named: "cat01")
        imageView.image = image
    }
    
    // 進むボタンをタップ
    @IBAction func nextButtonTap(_ sender: Any) {
        if displayImageNo < imageNameArray.count - 1 {
            // 表示している画像の番号を1増やす
            displayImageNo += 1
            // 表示している画像の番号を元に画像を表示する
            displayImage()
        } else {
            displayImageNo = 0
            displayImage()
        }
    }
    
    // 戻るボタンをタップ
    @IBAction func backButtonTap(_ sender: Any) {
        if displayImageNo >= 1 && displayImageNo <= imageNameArray.count - 1 {
            // 表示している画像の番号を1減らす
            displayImageNo -= 1
            // 表示している画像の番号を元に画像を表示する
            displayImage()
        } else {
            displayImageNo = imageNameArray.count - 1
            displayImage()
        }
    }
    
    // 再生・停止ボタンをタップ
    @IBAction func switchButtonTap(_ sender: Any) {
        
    }
    // 表示している画像の番号を元に画像を表示する
    func displayImage() {
        // 表示している画像の番号から名前を取り出し
        let name = imageNameArray[displayImageNo]
        
        // 画像を読み込み
        let image = UIImage(named: name)
        
        // Image Viewに読み込んだ画像をセット
        imageView.image = image
    }


}

