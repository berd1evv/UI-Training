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
        button.addTarget(self, action: #selector(gearButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let moreButton: UIButton = {
       let button = UIButton()
        button.setTitle("See more", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.addTarget(self, action: #selector(seeMoreButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let mainLabel: UILabel = {
       let label = UILabel()
        label.text = "Portfolio"
        label.font = .systemFont(ofSize: 35)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        title = "Portfolio"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        createProductArray()
        tableView.register(FirstProductCell.self, forCellReuseIdentifier: cellId)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        view.addSubview(gearButton)
        view.addSubview(moreButton)
        view.addSubview(mainLabel)
        
        setUpConstraints()
    }
    
    @objc func gearButtonPressed() {
        print("Gear button pressed")
    }
    
    @objc func seeMoreButtonPressed() {
        print("See more button pressed")
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("First TableView cell tapped")
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
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            tableView.widthAnchor.constraint(equalToConstant: view.bounds.size.width),
            tableView.heightAnchor.constraint(equalToConstant: view.bounds.height - 150),
            
            gearButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            gearButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            moreButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            moreButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
        
}
