//
//  AboutUsController.swift
//  Uy Xayvonlari
//
//  Created by Nurillo Domlajonov on 26/11/21.
//

import UIKit

class AboutUsController: UIViewController {
    let viewInformation = UIView()
    let myAdress = UITextView()
    let backgImage = UIImageView()
    let imageCow = UIImageView()
    let imageHorse = UIImageView()
    let imagePigeon = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        view.backgroundColor = .white
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.titleTextAttributes = [.foregroundColor: UIColor.blue]
            navigationItem.standardAppearance = appearance
        } else {
            // Fallback on earlier versions
        }
        
   
        
      
        navigationItem.title = "Biz haqimizda"
        
    }
    func initViews(){
        view.addSubview(imageCow)
        view.addSubview(imageHorse)
        view.addSubview(imagePigeon)
        view.addSubview(myAdress)
        view.addSubview(backgImage)
        view.sendSubviewToBack(backgImage)
        backgImage.contentMode = .scaleAspectFill
        backgImage.image = UIImage(named: "backImage")
        backgImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(viewInformation)
        viewInformation.backgroundColor = .white.withAlphaComponent(0.3)
        viewInformation.layer.cornerRadius = 15
        viewInformation.clipsToBounds = true
        if self.view.frame.height>670{
            viewInformation.snp.makeConstraints { make in
                make.right.left.equalToSuperview().inset(10)
                make.bottom.equalToSuperview().inset(100)
                make.top.equalToSuperview().inset(170)
                myAdress.font = UIFont(name: "Times New Roman", size: 25)
            }
            
        }
        else{
            myAdress.font = UIFont(name: "Times New Roman", size: 20)
            
            viewInformation.snp.makeConstraints { make in
                make.right.left.equalToSuperview().inset(10)
                make.bottom.equalToSuperview().inset(40)
                make.top.equalToSuperview().inset(90)
            }
        }
        myAdress.text = """


    Dasturchi Ma'lumotlari®



GitHub  : https://github.com/nurill0/nurill0.git

Telegram: https://t.me/programmer23

Linkedin: www.linkedin.com/in/nurillo-domlajonov-609a69226






        © 2021 COPYRIGHT

"""
        myAdress.backgroundColor = .white.withAlphaComponent(0.3)
        myAdress.textAlignment = .center
        myAdress.textAlignment = .center
        myAdress.textColor = .blue
        myAdress.layer.cornerRadius = 15
        myAdress.snp.makeConstraints { make in
            //            make.right.equalTo(viewInformation.snp.right)
            //            make.left.equalTo(viewInformation.snp.left)
            make.centerY.equalTo(viewInformation.snp.centerY)
            make.centerX.equalTo(viewInformation.snp.centerX)
            make.width.equalTo(viewInformation.snp.width)
            make.height.equalTo(viewInformation.snp.height)
        }
        imageHorse.contentMode = .scaleAspectFill
        imageCow.contentMode = .scaleAspectFill
        imagePigeon.contentMode = .scaleAspectFill
        imageHorse.image = UIImage(named: "horseBack")
        if self.view.frame.height>670{
            imageHorse.snp.makeConstraints { make in
                make.right.equalToSuperview()
                if #available(iOS 11.0, *) {
                    make.top.equalTo(self.view.safeAreaLayoutGuide).offset(-70)
                } else {
                    // Fallback on earlier versions
                }
                make.height.equalToSuperview().multipliedBy(0.1)
                make.width.equalToSuperview().multipliedBy(0.5)
            }
        }else{
            imageHorse.snp.makeConstraints { make in
                make.right.equalToSuperview().offset(25)
                if #available(iOS 11.0, *) {
                    make.top.equalTo(self.view.safeAreaLayoutGuide).offset(10)
                } else {
                    // Fallback on earlier versions
                }
                make.height.equalToSuperview().multipliedBy(0.05)
                make.width.equalToSuperview().multipliedBy(0.4)
            }
        }
        imagePigeon.image = UIImage(named: "pigeonBack")
        imagePigeon.contentMode = .scaleAspectFill
        if self.view.frame.height>670{
            imagePigeon.snp.makeConstraints { make in
                make.bottom.equalTo(viewInformation.snp.bottom).offset(20)
                make.left.equalTo(viewInformation.snp.centerX).offset(15)
                make.height.equalTo(viewInformation.snp.height).multipliedBy(0.12)
                make.width.equalTo(viewInformation.snp.width).multipliedBy(0.5)
            }
        }else{
            imagePigeon.snp.makeConstraints { make in
                make.bottom.equalTo(viewInformation.snp.bottom).offset(-10)
                make.left.equalTo(viewInformation.snp.centerX).offset(50)
                make.height.equalTo(viewInformation.snp.height).multipliedBy(0.12)
                make.width.equalTo(viewInformation.snp.width).multipliedBy(0.4)
            }
        }
        imageCow.image = UIImage(named: "cowBack")
        imageCow.contentMode = .scaleAspectFill
        if self.view.frame.height>670{
            imageCow.snp.makeConstraints { make in
                make.left.equalTo(viewInformation.snp.left).offset(-90)
                make.bottom.equalToSuperview().offset(-30)
                make.height.equalTo(viewInformation.snp.height).multipliedBy(0.2)
                make.width.equalTo(viewInformation.snp.width).multipliedBy(0.75)
            }
        }
        else{
            imageCow.snp.makeConstraints { make in
                make.left.equalTo(viewInformation.snp.left).offset(-50)
                make.bottom.equalToSuperview().offset(-29)
                make.height.equalTo(viewInformation.snp.height).multipliedBy(0.1)
                make.width.equalTo(viewInformation.snp.width).multipliedBy(0.5)
            }
        }
    }
}
