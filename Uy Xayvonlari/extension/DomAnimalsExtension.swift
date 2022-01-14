//
//  DomAnimalsExtension.swift
//  Uy Xayvonlari
//
//  Created by Nurillo Domlajonov on 25/11/21.
//

import UIKit

extension StartController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.getSize()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DomAnimlasCell
        cell.animalImage.image = UIImage(named: model.getItem(index: indexPath.item).animalName) 
        cell.textLabel.text = model.getItem(index: indexPath.item).animalImageName
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width-40, height: 250)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = PlaySoundController()
        vc.modalPresentationStyle = .fullScreen
        vc.nameOfImage = model.getItem(index: indexPath.item).animalName
        vc.navTitle = model.getItem(index: indexPath.item).animalImageName
        vc.audioName = model.getItem(index: indexPath.item).animalName
        //vc.nibBundle?.url(forResource: model.getItem(index: indexPath.item).animalName, withExtension: "mp3")
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    
    
    
}
