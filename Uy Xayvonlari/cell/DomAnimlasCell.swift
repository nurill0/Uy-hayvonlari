//
//  DomAnimlasCell.swift
//  Uy Xayvonlari
//
//  Created by Nurillo Domlajonov on 25/11/21.
//

import UIKit

class DomAnimlasCell: UICollectionViewCell {
    let viewForCell = UIView()
    let animalImage = UIImageView()
    let textLabel = UILabel()
    var nameOfImage: String = "dog"
    var nameOfAnimal: String = "It"
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    func initViews(){
        self.addSubview(viewForCell)
        self.addSubview(animalImage)
        self.addSubview(textLabel)
        viewForCell.backgroundColor = .white.withAlphaComponent(0.3)
        viewForCell.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.right.left.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
        }
        viewForCell.layer.cornerRadius = 20
        animalImage.image = UIImage(named: nameOfImage)
        animalImage.contentMode = .scaleAspectFill
        animalImage.clipsToBounds = true
        animalImage.layer.borderWidth = 2
        if #available(iOS 13.0, *) {
            animalImage.layer.borderColor = UIColor.systemGray2.cgColor
        } else {
            // Fallback on earlier versions
        }
        animalImage.layer.cornerRadius = 65
        animalImage.snp.makeConstraints { make in
            make.centerY.equalTo(viewForCell.snp.top)
            make.centerX.equalToSuperview()
            make.height.equalTo(130)
            make.width.equalTo(130)
        }
        self.addSubview(textLabel)
        textLabel.text = nameOfImage
        if #available(iOS 13.0, *) {
            textLabel.tintColor = .systemFill
        } else {
            // Fallback on earlier versions
        }
        textLabel.textAlignment = .center
        textLabel.font = UIFont(name: "Times New Roman", size: 35)
        textLabel.snp.makeConstraints { make in
            make.centerY.equalTo(viewForCell.snp.centerY).offset(30)
//            make.top.equalTo(animalImage.snp.bottom).offset(10)
//            make.bottom.equalTo(viewForCell.snp.bottom).offset(10)
            make.right.left.equalToSuperview().inset(20)
        }
        
        
        
        
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
