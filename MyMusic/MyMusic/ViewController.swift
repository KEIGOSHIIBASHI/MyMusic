//
//  ViewController.swift
//  MyMusic
//
//  Created by keigo.shiibashi on 2022/09/14.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //シンバルの音源
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
    var cymbalPlayer = AVAudioPlayer()
    
    @IBAction func cymbal(_ sender: Any) {
        do{
        cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
        
        cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生")
        }
    }
    
    //ギターの音源ファイルを指定
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    
    //ギター用のインスタンスを作成
    var guitarPlayer = AVAudioPlayer()

    @IBAction func guitar(_ sender: Any) {
        do {
            ///ギター用のプレイヤーに音楽ファイルを入れる
        guitarPlayer = try AVAudioPlayer(contentsOf:guitarPath, fileTypeHint: nil)
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生")
        }
    }
    //バックミュージックの音源ファイルを指定
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    //バックミュージック用のプレイヤーインスタンスを作成
    var backmusicPlayer = AVAudioPlayer()
    //Playボタンの処理
    @IBAction func play(_ sender: Any) {
        do{
            //バックミュージック用のプレイヤーに、音源ファイル名を指名
            backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
            
            backmusicPlayer.numberOfLoops = -1
            backmusicPlayer.play()
        } catch{
            print("エラーが発生")
        }
    }
    
    //stopボタンの処理
    @IBAction func stop(_ sender: Any) {
        //バックミュージック停止
        backmusicPlayer.stop()
    }
    
}

