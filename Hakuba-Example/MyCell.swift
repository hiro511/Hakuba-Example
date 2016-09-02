//
//  MyCell.swift
//  Hakuba-Example
//
//  Created by Hiroaki Egashira on 9/2/16.
//  Copyright © 2016 Hiroaki Egashira. All rights reserved.
//

import UIKit
import Hakuba

class MyCell: Cell, CellType {

    typealias CellModel = MyCellModel
    
    @IBOutlet weak var label: UILabel!
    
    override func configure() {
        guard let cellmodel = cellmodel else { return }
        
        cellmodel.editable = true
        cellmodel.editingStyle = .Delete
    }
}
