//
//  PlaySoundController.swift
//  Uy Xayvonlari
//
//  Created by Nurillo Domlajonov on 27/11/21.


import UIKit
import AVFoundation

class PlaySoundController: UIViewController {
    var player = AVAudioPlayer()
    let animalImage = UIImageView()
    let backgroundImage = UIImageView()
    let playButton = UIButton()
    var navTitle = "It"
    var nameOfImage = ""
    var audioName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = navTitle
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.titleTextAttributes = [.foregroundColor: UIColor.blue]
            navigationItem.standardAppearance = appearance
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 11.0, *) {
            initViews()
        } else {
            // Fallback on earlier versions
        }
       // initViews()
    }
    func playSound() {
        let url = Bundle.main.url(forResource: audioName, withExtension: "mp3")
        player = try!AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    @available(iOS 11.0, *)
    func initViews(){
        view.addSubview(animalImage)
        view.addSubview(playButton)
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.image = UIImage(named: "yangi")
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        animalImage.image = UIImage(named: nameOfImage)
        animalImage.contentMode = .scaleAspectFill
        animalImage.clipsToBounds = true
        if self.view.frame.height>670{
            animalImage.layer.cornerRadius = 10
            animalImage.snp.makeConstraints { make in
                make.width.equalToSuperview().inset(20)
                make.height.equalTo(260)
                if #available(iOS 11.0, *) {
                    make.top.equalTo(self.view.safeAreaLayoutGuide).offset(20)
                } else {
                    // Fallback on earlier versions
                }
                make.centerX.equalToSuperview()
            }
        }else{
            animalImage.layer.cornerRadius = 10
            animalImage.snp.makeConstraints { make in
                make.width.equalToSuperview().inset(20)
                make.height.equalTo(200)
                make.top.equalTo(self.view.safeAreaLayoutGuide).offset(20)
                make.centerX.equalToSuperview()
            }
            
        }
        playButton.setImage(UIImage(named: "play"), for: .normal)
        playButton.contentMode = .scaleAspectFill
//        playButton.layer.cornerRadius = view.frame.width/2-60
        playButton.snp.makeConstraints { make in
            make.top.equalTo(animalImage.snp.bottom).offset(120)
            make.left.right.equalToSuperview().inset(100)
            make.height.equalToSuperview().multipliedBy(0.225)
        }
        playButton.addTarget(self, action: #selector(playSounds), for: .touchUpInside)
        
    }
    @objc func playSounds(){
        playSound()
    }
}
