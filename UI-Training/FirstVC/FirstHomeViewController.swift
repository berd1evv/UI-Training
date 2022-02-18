//
//  HomeViewController.swift
//  UI-Training
//
//  Created by Eldiiar on 8/2/22.
//

import UIKit

class FirstHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "cellId"
    var products : [FirstProduct] = [FirstProduct]()
    
    let tableView = UITableView()
    
    let gearButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "gearshape"), for: .normal)
        button.tintColor = .black
        button.frame = CGRect(x: 310, y: 75, width: 50, height: 50)
        button.addTarget(self, action: #selector(gearButtonPressed), for: .touchUpInside)
        return button
    }()
    
    let label: UILabel = {
       let label = UILabel()
        label.text = "See more"
        label.textColor = .orange
        label.frame = CGRect(x: 280, y: 105, width: 120, height: 50)
        return label
    }()
    
//    let mainLabel: UILabel = {
//       let label = UILabel()
//        label.text = "Portfolio"
//        label.font = .systemFont(ofSize: 35)
//        label.frame = CGRect(x: 10, y: 90, width: 160, height: 50)
//        return label
//    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        tableView.frame = view.bounds
        title = "Portfolio"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        createProductArray()
        tableView.register(FirstProductCell.self, forCellReuseIdentifier: cellId)
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        view.addSubview(gearButton)
        view.addSubview(label)
        
        //view.addSubview(mainLabel)
    }
    
    @objc func gearButtonPressed() {
        print("Gear button pressed")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! FirstProductCell
        let currentLastItem = products[indexPath.row]
        cell.product = currentLastItem
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func createProductArray() {
        products.append(FirstProduct(productName: "Bitcoins", productImage: UIImage(named: "bch")!, percentage: "+1,6%", dollars: "$29,850.15" , description: "2,73 BTC"))
        products.append(FirstProduct(productName: "Etherium", productImage: UIImage(named: "eth")!, percentage: "-0,82%", dollars: "$10,561,24", description: "47.61 ETH"))
        products.append(FirstProduct(productName: "Doge Coin", productImage: UIImage(named: "doge")!, percentage: "+0,27%", dollars: "$3,672", description: "231.46 DOGE"))
        products.append(FirstProduct(productName: "Bitcoins", productImage: UIImage(named: "bch")!, percentage: "+1,6%", dollars: "$29,850.15" , description: "2,73 BTC"))
        products.append(FirstProduct(productName: "Etherium", productImage: UIImage(named: "eth")!, percentage: "-0,82%", dollars: "$10,561,24", description: "47.61 ETH"))
        products.append(FirstProduct(productName: "Doge Coin", productImage: UIImage(named: "doge")!, percentage: "+0,27%", dollars: "$3,672", description: "231.46 DOGE"))
        products.append(FirstProduct(productName: "Bitcoins", productImage: UIImage(named: "bch")!, percentage: "+1,6%", dollars: "$29,850.15" , description: "2,73 BTC"))
        products.append(FirstProduct(productName: "Etherium", productImage: UIImage(named: "eth")!, percentage: "-0,82%", dollars: "$10,561,24", description: "47.61 ETH"))
        products.append(FirstProduct(productName: "Doge Coin", productImage: UIImage(named: "doge")!, percentage: "+0,27%", dollars: "$3,672", description: "231.46 DOGE"))
        products.append(FirstProduct(productName: "Bitcoins", productImage: UIImage(named: "bch")!, percentage: "+1,6%", dollars: "$29,850.15" , description: "2,73 BTC"))
        products.append(FirstProduct(productName: "Etherium", productImage: UIImage(named: "eth")!, percentage: "-0,82%", dollars: "$10,561,24", description: "47.61 ETH"))
        products.append(FirstProduct(productName: "Doge Coin", productImage: UIImage(named: "doge")!, percentage: "+0,27%", dollars: "$3,672", description: "231.46 DOGE"))
    }
        
}
