//
//  ViewController.swift
//  DanhBa
//
//  Created by HuyNguyen on 27/02/2023.
//

import UIKit


struct ModelData {
    var sectionName: String
    var listName: [String]
    var image: [String]
}



class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var data = [ModelData(sectionName:"A", listName: ["Anh Hai","Anh Si","Anh Ba"], image: ["Image"]),ModelData(sectionName:"B", listName: ["Ba","Bá","Bình"],image: ["Image","Image","Image"]),ModelData(sectionName:"C", listName: ["Cô Hai","Cô Sáu","Công"],image: ["Image","Image","Image"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionName
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].listName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbvDanhBa.dequeueReusableCell(withIdentifier: "ContractsATableViewCell", for: indexPath) as! ContractsATableViewCell
        cell.lbNameInContractsA.text = data[indexPath.section].listName[indexPath.row]
        if indexPath.section == 0
        {
            cell.imgContract.isHidden = true
            cell.btnCall.isHidden = true
        }
        else if indexPath.section == 1
        {
            cell.imgContract.isHidden = false
            cell.btnCall.isHidden = true
            cell.imgContract.image = UIImage(named: data[indexPath.section].image[indexPath.row])
        }
        else if indexPath.section == 2{
            cell.imgContract.isHidden = false
            cell.btnCall.isHidden = false
            cell.imgContract.image = UIImage(named: data[indexPath.section].image[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50 //According requirement
    }
    
    
    @IBOutlet weak var tbvDanhBa: UITableView!{
        didSet {
                           tbvDanhBa.delegate = self
                           tbvDanhBa.dataSource = self
            tbvDanhBa.register(ContractsATableViewCell.cellNib, forCellReuseIdentifier: ContractsATableViewCell.cellIdentifier)
                           
        
    }
        
    }
    
}

