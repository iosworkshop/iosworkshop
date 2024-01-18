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
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let noOfCellsInRow = 3

        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout

        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))

        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))

        return CGSize(width: size, height: size)
    }

    
}

