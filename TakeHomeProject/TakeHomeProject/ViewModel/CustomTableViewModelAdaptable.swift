//
//  CustomTableViewModelAdaptable.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 09/01/24.
//

import Foundation
import UIKit

protocol CustomTableViewModelAdaptable{
    var icon: UIImage { get }
    var name: String? { get }
    var details: String? { get }
}
