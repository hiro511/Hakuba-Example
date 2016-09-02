//
//  ViewController.swift
//  Hakuba-Example
//
//  Created by Hiroaki Egashira on 9/2/16.
//  Copyright © 2016 Hiroaki Egashira. All rights reserved.
//

import UIKit
import Hakuba

class ViewController: UIViewController {
    private let  tableView = UITableView()
    private lazy var hakuba: Hakuba = Hakuba(tableView: self.tableView)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationBar()
        configureAppearance()
        configureHakuba()
    }
    
    func tapAddBtn(){
        hakuba[0]
            .append(MyCellModel())
            .bump(.Middle)
    }
    
    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        hakuba.setEditing(editing, animated: animated)
    }
    
    func deleteCell(indexPath: NSIndexPath){
        hakuba[indexPath.section]
            .remove(indexPath.row)
            .bump()
    }

}

// MARK - private methods
private extension ViewController {
    
    func configureAppearance(){
        tableView.allowsSelection = false
        tableView.frame = view.frame
        view = tableView
    }
    
    func configureNavigationBar(){
        let addBtn = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(tapAddBtn))
        navigationItem.setRightBarButtonItem(addBtn, animated: true)
        navigationItem.leftBarButtonItem = editButtonItem()
    }
    
    func configureHakuba(){
        hakuba
            .registerCellByNib(MyCell)
            .commitEditingHandler = { [weak self] style, indexPath in
                if (style == UITableViewCellEditingStyle.Delete) {
                    self?.deleteCell(indexPath)
                }
            }
        
        let cells: [MyCellModel] = Array(count: 4, repeatedValue: MyCellModel())
        let section = Section()
        
        hakuba
            .reset(section)
            .bump()
        
        section
            .reset(cells)
            .bump()
    }
}

