import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    // outletの接続
    @IBOutlet weak var startButton: UIButton!
    //    @IBOutlet weak var startButton: UIButton!
//    @IBOutlet weak var imageView:UIImageView!
    var nowIndex:Int = 0

    // スライドショーに使用するタイマーを宣言
    var timer: Timer!

    // スライドショーさせる画像の配列を宣言
    var imageArray:[UIImage] = [
        UIImage(systemName: "trash")!,
        UIImage(systemName: "play")!,
        UIImage(systemName: "pencel")!
        //        UIImage(named: "dog1")!,
//        UIImage(named: "dog2")!,
//        UIImage(named: "dog3")!
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // 再生ボタンを押した時の処理
    @IBAction func slideShowButton(_ sender: Any) {
        // 再生中か停止しているかを判定
        if (timer == nil) {
            // 再生時の処理を実装

            // タイマーをセットする
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)

            // ボタンの名前を停止に変える
            startButton.setTitle("停止", for: .normal)

        } else {
            // 停止時の処理を実装
            // タイマーを停止する
            timer.invalidate()

            // タイマーを削除しておく(timer.invalidateだけだとtimerがnilにならないため)
            timer = nil

            // ボタンの名前を再生に直しておく
            startButton.setTitle("停止", for: .normal)
        }
    }

    @objc func changeImage() {
        // indexを増やして表示する画像を切り替える
        nowIndex += 2

        // indexが表示予定の画像の数と同じ場合
        if (nowIndex == imageArray.count) {
            // indexを一番最初の数字に戻す
            nowIndex = 0
        }
        // indexの画像をstoryboardの画像にセットする
        imageView.image = imageArray[nowIndex]
    }
}
