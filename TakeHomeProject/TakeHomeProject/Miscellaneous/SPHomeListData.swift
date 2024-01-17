//
//  SPHomeListData.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 08/01/24.
//

import Foundation

enum SPHomeListData : CaseIterable{
    case customtableView
    case collectionView
    case compotiteLayout
    case tabBar
}

extension SPHomeListData: homeViewModelDisplayble {
    var title: String? {
        switch self {
        case .customtableView: return "Custom Table View"
        case .collectionView: return "Collection View"
        case .compotiteLayout: return "Compotite Layout"
        case .tabBar: return "TabBar"
        }
    }
}
