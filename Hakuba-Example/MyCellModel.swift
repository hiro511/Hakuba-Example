//
//  MyCellModel.swift
//  Hakuba-Example
//
//  Created by Hiroaki Egashira on 9/2/16.
//  Copyright © 2016 Hiroaki Egashira. All rights reserved.
//

import UIKit
import Hakuba

class MyCellModel: CellModel {
    let text = String()
    
    init() {
        super.init(cell: MyCell.self, selectionHandler: nil)
    }

}
