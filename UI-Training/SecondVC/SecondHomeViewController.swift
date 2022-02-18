//
//  SecondHomeViewController.swift
//  UI-Training
//
//  Created by Eldiiar on 18/2/22.
//

import UIKit

class SecondHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "cell"
    
    let tableView = UITableView()
    var products : [SecondProduct] = [SecondProduct]()
    
    
    let balanceLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 160, y: 60, width: 100, height: 30)
        label.font = .systemFont(ofSize: 19)
        label.text = "Balance"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let moneyLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 110, y: 110, width: 160, height: 30)
        label.font = .boldSystemFont(ofSize: 37)
        label.text = "$1200.89"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let monthLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 140, y: 160, width: 160, height: 30)
        label.font = .systemFont(ofSize: 20)
        label.text = "April 2020"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let leftArrowButton: UIButton = {
        let lbutton = UIButton()
        lbutton.frame = CGRect(x: 80, y: 170, width: 15, height: 15)
        lbutton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        lbutton.tintColor = .black
        lbutton.translatesAutoresizingMaskIntoConstraints = false
        lbutton.addTarget(self, action: #selector(leftArrowTapped), for: .touchUpInside)
        return lbutton
    }()
    
    let rightArrowButton: UIButton = {
        let rbutton = UIButton()
        rbutton.frame = CGRect(x: 270, y: 170, width: 15, height: 15)
        rbutton.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        rbutton.tintColor = .black
        rbutton.translatesAutoresizingMaskIntoConstraints = false
        rbutton.addTarget(self, action: #selector(rightArrowTapped), for: .touchUpInside)
        return rbutton
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor(named: "lightWhiteGray")
        
        tableView.frame = CGRect(x: 0, y: 230, width: view.frame.width, height: 1500)
        tableView.register(SecondProductCell.self, forCellReuseIdentifier: cellId)
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 30
        
        navigationController?.isNavigationBarHidden = true
        
        createProductArray()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        view.addSubview(balanceLabel)
        view.addSubview(moneyLabel)
        view.addSubview(monthLabel)
        view.addSubview(leftArrowButton)
        view.addSubview(rightArrowButton)
        
        setUpConstraints()
    }
    
    
    @objc func leftArrowTapped() {
        print("Left arrow Tapped!!!")
    }
    
    @objc func rightArrowTapped() {
        print("Right arrow Tapped!!!")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SecondProductCell?
        let currentLastItem = products[indexPath.row]
        cell!.product = currentLastItem
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Second TableView cell tapped")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func setUpConstraints() {
        balanceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        balanceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        
        moneyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        moneyLabel.topAnchor.constraint(equalTo: balanceLabel.bottomAnchor, constant: 15).isActive = true
        
        monthLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        monthLabel.topAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: 30).isActive = true
        
        leftArrowButton.trailingAnchor.constraint(equalTo: monthLabel.leadingAnchor, constant: -60).isActive = true
        leftArrowButton.topAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: 32).isActive = true
        
        rightArrowButton.leadingAnchor.constraint(equalTo: monthLabel.trailingAnchor, constant: 60).isActive = true
        rightArrowButton.topAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: 32).isActive = true
    }
    
    
    func createProductArray() {
        products.append(SecondProduct(productName: "Home", productImage: UIImage(named: "crane")!, price: "$321", description: "Products"))
        products.append(SecondProduct(productName: "Purchases", productImage: UIImage(named: "giraffe")!, price: "$574", description: "Clothes"))
        products.append(SecondProduct(productName: "Transport", productImage: UIImage(named: "seal")!, price: "$124", description: "Taxi"))
        products.append(SecondProduct(productName: "Health", productImage: UIImage(named: "bat")!, price: "$765", description: "Treatment"))
        products.append(SecondProduct(productName: "Fitness", productImage: UIImage(named: "butterfly")!, price: "$324", description: "Trainings"))
        products.append(SecondProduct(productName: "Bills", productImage: UIImage(named: "dolphin")!, price: "$847", description: "Utillities"))
        products.append(SecondProduct(productName: "Restraunt", productImage: UIImage(named: "rabbit")!, price: "$372", description: "Dinner"))
    }
}
