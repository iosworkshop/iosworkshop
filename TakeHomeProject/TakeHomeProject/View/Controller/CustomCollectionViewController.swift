//
//  CustomCollectionViewController.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 13/01/24.
//

import UIKit
//import SwiftLint

class CustomCollectionViewController: UIViewController {
  //  var viewModel: HTCustomCollectionViewModelActionable?
    var viewModel: FruitViewModel?
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fruits Lists"
        setUpCollectionView()
        viewModel = FruitViewModel()
        //viewModel?.readJsonFile()
        //  collectionView.delegate = UICollectionViewController
        //  collectionView.dataSource = self
      
  
    }
    func setUpCollectionView(){
        let nib = UINib(nibName: "CustomCollectionViewCell".self, bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: "CustomCollectionViewCell")
    }

}

extension CustomCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let noOfCellsInRow = 4
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.arrayOfFruits.count ?? 0
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell else{
            return UICollectionViewCell()
            
        }
        print(viewModel?.arrayOfFruits as Any)
        cell.setUpCollectionViewUI(item: viewModel?.arrayOfFruits[indexPath.row] ?? fruitDetails())
        return cell
    }
}

