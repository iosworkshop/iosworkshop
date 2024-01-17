//
//  CustomCollectionViewModelAdaptable.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 13/01/24.
//

import Foundation

typealias CustomCollectionViewModelAdaptable = HTCustomCollectionViewModelDisplayable & HTCustomCollectionViewModelActionable

protocol HTCustomCollectionViewModelDisplayable{
    var isNavigationBarHidden: Bool { get }
}

protocol HTCustomCollectionViewModelActionable{
    func readJsonFile()
}

