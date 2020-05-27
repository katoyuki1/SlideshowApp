//
//  ZoomInController.swift
//  SlideshowApp
//
//  Created by katoyuki on 2020/05/27.
//  Copyright © 2020 yuki.kato. All rights reserved.
//

import UIKit

class ZoomInController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var selectedImg: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Image Viewに画像を設定
        imageView.image = selectedImg
    }
    
    // 戻る
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
