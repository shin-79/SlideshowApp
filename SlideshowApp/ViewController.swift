import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!// outletの接続
    @IBOutlet weak var startButton: UIButton!
    //    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    //    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var procedBUtton: UIButton!
    var nowIndex:Int = 0
    
    var tapCount = 1
    
    // スライドショーに使用するタイマーを宣言
    var timer: Timer!
    
    // スライドショーさせる画像の配列を宣言
    var imageArray:[UIImage] = [
        UIImage(named: "dog1")!,
        UIImage(named: "dog2")!,
        UIImage(named: "dog3")!
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func slidebutton(_ sender: Any) {
        if (timer == nil) {
            // 再生時の処理を実装
            
            // タイマーをセットする
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            // ボタンの名前を停止に変える
            startButton.setTitle("停止", for: .normal)
            
            //UIButtonを無効化
            button1.isEnabled = false
            backButton2.isEnabled = false
        } else {
            // 停止時の処理を実装
            // タイマーを停止する
            timer.invalidate()
            
            // タイマーを削除しておく(timer.invalidateだけだとtimerがnilにならないため)
            timer = nil
            
            // ボタンの名前を再生に直しておく
            startButton.setTitle("再生", for: .normal)
            //UIButtonを有効化
            button1.isEnabled = true
            backButton2.isEnabled = true
        }
    }
    @IBAction func procedBUtton(_ sender: Any) {
        // indexを増やして表示する画像を切り替える
        nowIndex += 1
        
        // indexが表示予定の画像の数と同じ場合
        if (nowIndex == imageArray.count) {
            // indexを一番最初の数字に戻す
            nowIndex = 0
        }
        
        // indexの画像をstoryboardの画像にセットする
        imageView.image = imageArray[nowIndex]
        
        
    }
    @IBAction func backBUtton(_ sender: Any) {
        // indexを減らして表示する画像を切り替える
        nowIndex -= 1
        
        // indexが表示予定の画像の数と同じ場合
        if (nowIndex < 0) {
            // indexを一番最初の数字に戻す
            nowIndex = 2
        }
        
        // indexの画像をstoryboardの画像にセットする
        imageView.image = imageArray[nowIndex]
    }
    
    
    @objc func changeImage() {
        // indexを増やして表示する画像を切り替える
        nowIndex += 1
        
        // indexが表示予定の画像の数と同じ場合
        if (nowIndex == imageArray.count) {
            // indexを一番最初の数字に戻す
            nowIndex = 0
        }
        
        // indexの画像をstoryboardの画像にセットする
        imageView.image = imageArray[nowIndex]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.image = imageArray[nowIndex]
        
        if (timer == nil) {
} else {
            timer.invalidate()
            timer = nil
}    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {}
    // 他の画面から segue を使って戻ってきた時に呼ばれる

    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var backButton2: UIButton!
    
    
    @IBAction func imageViewTapped(_ sender: Any) {

        
        if (timer == nil) {
} else {
            timer.invalidate()
            timer = nil
}
        
        
        
        
    }
}
