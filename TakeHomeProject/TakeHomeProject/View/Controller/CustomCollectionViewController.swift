//
//  CustomCollectionViewController.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 13/01/24.
//

import UIKit

class CustomCollectionViewController: UIViewController {
    var viewModel: HTCustomCollectionViewModelActionable?
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var lblLable : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CollectionView"
        setUpCollectionView()
        viewModel?.readJsonFile()
      
        //  collectionView.delegate = UICollectionViewController
        //  collectionView.dataSource = self
        //  Do any additional setup after loading the view.
    }
    func setUpCollectionView(){
        let nib = UINib(nibName: "CustomCollectionViewCell".self, bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: "CustomCollectionViewCell")
    }
}

extension CustomCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell else{
            return UICollectionViewCell()
            
        }
        return cell
        
    }
    
    
}

