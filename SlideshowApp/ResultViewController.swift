//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 布団 on 2023/03/09.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image=image
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var imageView: UIImageView!
    
       // 受け取るためのプロパティ（変数）を宣言しておく
    var image:UIImage?
    
        
           
}
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

