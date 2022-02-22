//
//  SecondHomeViewController.swift
//  UI-Training
//
//  Created by Eldiiar on 18/2/22.
//

import UIKit
import SnapKit

class SecondHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "cell"
    
    let tableView = UITableView()
    var products : [SecondProduct] = [SecondProduct]()
    
// MARK: Components
    
    let balanceLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 19)
        label.text = "Balance"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let moneyLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 37)
        label.text = "$1200.89"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let monthLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.text = "April 2020"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let leftArrowButton: UIButton = {
        let lbutton = UIButton()
        lbutton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        lbutton.tintColor = .black
        lbutton.translatesAutoresizingMaskIntoConstraints = false
        lbutton.addTarget(self, action: #selector(leftArrowTapped), for: .touchUpInside)
        return lbutton
    }()
    
    let rightArrowButton: UIButton = {
        let rbutton = UIButton()
        rbutton.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        rbutton.tintColor = .black
        rbutton.translatesAutoresizingMaskIntoConstraints = false
        rbutton.addTarget(self, action: #selector(rightArrowTapped), for: .touchUpInside)
        return rbutton
    }()
    
    let seeMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("See More", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(seeMoreButtonTapped), for: .touchUpInside)
        return button
    }()
                     
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor(named: "lightWhiteGray")
        
        tableView.register(SecondProductCell.self, forCellReuseIdentifier: cellId)
        tableView.translatesAutoresizingMaskIntoConstraints = false
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
    
    override func viewDidLayoutSubviews() {
        tableView.heightAnchor.constraint(equalToConstant: tableView.contentSize.height).isActive = true
    }
    
    @objc func leftArrowTapped() {
        print("Left arrow Tapped!!!")
    }
    
    @objc func rightArrowTapped() {
        print("Right arrow Tapped!!!")
    }
    
    @objc func seeMoreButtonTapped() {
        print("See more button Tapped!!!")
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
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.addSubview(seeMoreButton)

        seeMoreButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
        }

        return footerView
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    func setUpConstraints() {
        
        balanceLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(60)
        }
        
        moneyLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(balanceLabel).offset(25)
        }
        
        monthLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(moneyLabel).offset(75)
        }
        
        leftArrowButton.snp.makeConstraints { make in
            make.left.equalTo(moneyLabel).offset(-40)
            make.top.equalTo(moneyLabel).offset(77)
        }
        
        rightArrowButton.snp.makeConstraints { make in
            make.right.equalTo(moneyLabel).offset(40)
            make.top.equalTo(moneyLabel).offset(77)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(230)
            make.width.equalTo(view.bounds.size.width)
            make.bottom.equalToSuperview().offset(100)
        }
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

