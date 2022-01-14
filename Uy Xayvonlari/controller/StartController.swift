//
//  StartController.swift
//  Uy Xayvonlari
//
//  Created by Nurillo Domlajonov on 25/11/21.
//

import UIKit

class StartController: UIViewController {
    let model = AnimalsData()
    let backgroundImage = UIImageView()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(DomAnimlasCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "UY HAYVONLARI"
        initViews()
        view.backgroundColor = .white
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "ORTGA", style: .plain, target: nil, action: nil)
    }
    func initViews(){
        view.sendSubviewToBack(backgroundImage)
        view.addSubview(backgroundImage)
        backgroundImage.image = UIImage(named: "backImage")
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(collectionView)
        collectionView.backgroundColor = .clear
        collectionView.snp.makeConstraints { make in
            if #available(iOS 11.0, *) {
                make.top.equalTo(self.view.safeAreaLayoutGuide)
            } else {
                // Fallback on earlier versions
            }
            make.width.bottom.equalToSuperview()
        }
        
        
    }
   
}
