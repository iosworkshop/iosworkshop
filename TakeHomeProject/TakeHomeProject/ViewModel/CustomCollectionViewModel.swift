//
//  CustomCollectionViewModel.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 13/01/24.
//

import Foundation

class CustomCollectionViewModel:HTCustomCollectionViewModelActionable {
   
    func readJsonFile() {
        let fileName = "PhotoGallary"
        let fileType = "json"
        
        if let path = Bundle.main.path(forResource: fileName, ofType: fileType) {
            do {
                let data = try Data(contentsOf: URL(filePath: path), options: .mappedIfSafe)
                let jsonObject = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                print(jsonObject)
                } catch{
                
            }
        }
    }


    
}

