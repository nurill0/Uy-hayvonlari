//
//  ViewController.swift
//  Uy Xayvonlari
//
//  Created by Nurillo Domlajonov on 22/11/21.
//

import UIKit
import SnapKit
import Lottie
class ViewController: UIViewController {
    let backGroundImage  = UIImageView()
    var animationView: AnimationView?
    let dogImage = UIImageView()
    let catImage = UIImageView()
    let birdImage = UIImageView()
    let startButton = MyButtons(title: "        Boshlash       🏁", titleColor: .black, textSize: 31, backgroundColor: .white.withAlphaComponent(0.35), radius: 25, borderW: 2, borderC: UIColor.black.cgColor, shadowOp: 10, shadowC: UIColor.gray.cgColor, shadowOf: CGSize(width: 10, height: 10))
    let infoButton = MyButtons(title: "Biz haqimizda ℹ️", titleColor: .black, textSize: 28, backgroundColor: .white.withAlphaComponent(0.35), radius: 25, borderW: 2, borderC: UIColor.black.cgColor, shadowOp: 10, shadowC: UIColor.gray.cgColor, shadowOf: CGSize(width: 10, height: 10))
    let rateButton = MyButtons(title: "   Baxolash ⭐️", titleColor: .black, textSize: 28, backgroundColor: .white.withAlphaComponent(0.35), radius: 25, borderW: 2, borderC: UIColor.black.cgColor, shadowOp: 10, shadowC: UIColor.gray.cgColor, shadowOf: CGSize(width: 10, height: 10))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initImages()
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "ORTGA", style: .plain, target: nil, action: nil)
        rateButton.addTarget(self, action: #selector(rateApp), for: .touchUpInside)
        infoButton.addTarget(self, action: #selector(goAboutController), for: .touchUpInside)
        startButton.addTarget(self, action: #selector(goNextController), for: .touchUpInside)
    }
  
    func initImages(){
        view.sendSubviewToBack(backGroundImage)
        view.addSubview(backGroundImage)
        backGroundImage.image = UIImage(named: "yangi")
        backGroundImage.contentMode = .scaleAspectFill
        backGroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        view.addSubview(dogImage)
        dogImage.image = UIImage(named: "dogBack")
        dogImage.contentMode = .scaleAspectFit
        dogImage.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(35)
            make.left.equalToSuperview().offset(20)
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        
        view.addSubview(catImage)
        catImage.image = UIImage(named: "catBack")
        catImage.contentMode = .scaleAspectFit
        if view.frame.height<670{
            catImage.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.right.equalToSuperview().offset(-70)
                make.height.equalToSuperview().multipliedBy(0.4)
            }
        }
        else{
            catImage.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.right.equalToSuperview().offset(-100)
                make.height.equalToSuperview().multipliedBy(0.4)
            }
            
        }
        
        view.addSubview(birdImage)
        birdImage.image = UIImage(named: "birdBack")
        birdImage.contentMode = .scaleAspectFit
        if self.view.frame.height<670{
            birdImage.snp.makeConstraints { make in
                make.right.equalTo(self.view.snp.right).offset(200)
                make.top.equalToSuperview()
                make.height.equalToSuperview().multipliedBy(0.2)
            }
        }
        else{
            birdImage.snp.makeConstraints { make in
                make.right.equalTo(self.view.snp.right).offset(200)
                make.top.equalToSuperview().offset(30)
                make.height.equalToSuperview().multipliedBy(0.2)
            }}
    
    view.addSubview(startButton)
        startButton.titleLabel?.textAlignment = .right
        if self.view.frame.height>670{
            startButton.snp.makeConstraints { make in
                make.right.equalToSuperview().inset(10)
                make.top.equalToSuperview().offset(200)
                make.width.equalToSuperview().multipliedBy(0.75)
                make.height.equalToSuperview().multipliedBy(0.1)
            }
        }
        else{
            startButton.snp.makeConstraints { make in
                make.right.equalToSuperview().inset(10)
                make.top.equalToSuperview().offset(110)
                make.width.equalToSuperview().multipliedBy(0.75)
                make.height.equalToSuperview().multipliedBy(0.1)
            }
        }
        
        view.addSubview(infoButton)
        infoButton.titleLabel?.textAlignment = .right
        if #available(iOS 11.0, *) {
            infoButton.adjustsImageSizeForAccessibilityContentSizeCategory = true
        } else {
            // Fallback on earlier versions
        }
        infoButton.contentMode = .right
        infoButton.snp.makeConstraints { make in
            make.top.equalTo(startButton.snp.bottom).offset(10)
            make.right.equalToSuperview().inset(10)
            make.height.equalToSuperview().multipliedBy(0.1)
            make.width.equalToSuperview().multipliedBy(0.65)
        }
        view.addSubview(rateButton)
        rateButton.clipsToBounds = true
        rateButton.titleLabel?.textAlignment = .right
        rateButton.snp.makeConstraints { make in
            make.top.equalTo(infoButton.snp.bottom).offset(10)
            make.right.equalToSuperview().inset(10)
            make.width.equalToSuperview().multipliedBy(0.55)
            make.height.equalToSuperview().multipliedBy(0.1)

        }
        
        
   
}
    @objc func goNextController(){
        let vc = StartController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
//        vc.modalTransitionStyle = .crossDissolve
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true, completion: nil)
        
    }
    @objc func goAboutController(){
        let vc = AboutUsController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func rateApp()->Void{
           
           let url = URL(string: "https://apps.apple.com/app/apple-store/id" + "\(Constants.appId)")!
           UIApplication.shared.open(url)
           
           
       }
    
    
    
    
    
    
    

}
