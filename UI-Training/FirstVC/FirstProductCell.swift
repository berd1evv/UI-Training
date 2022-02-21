//
//  ProductCell.swift
//  UI-Training
//
//  Created by Eldiiar on 8/2/22.
//

import UIKit

class FirstProductCell : UITableViewCell {
    var product : FirstProduct? {
        didSet {
            productImage.image = product?.productImage
            productNameLabel.text = product?.productName
            productDescriptionLabel.text = product?.percentage
            productToDollarsLabel.text = product?.dollars
            productDollarsDescription.text = product?.description
        }
    }
 
 
    private let productNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = .boldSystemFont(ofSize: 20)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
 
 
    private let productDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = .systemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let productToDollarsLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = .boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let productDollarsDescription : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = .systemFont(ofSize: 14)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
 
 
    private let productImage : UIImageView = {
        let imgView = UIImageView(image: UIImage(named: "bch"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
 
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(productImage)
        addSubview(productNameLabel)
        addSubview(productDescriptionLabel)
        addSubview(productDollarsDescription)
        addSubview(productToDollarsLabel)
        
        NSLayoutConstraint.activate([
            productImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            productImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            productImage.heightAnchor.constraint(equalToConstant: 70),
            productImage.widthAnchor.constraint(equalToConstant: 70),
            
            productNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            productNameLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 15),
            
            productToDollarsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            productToDollarsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            productDollarsDescription.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            productDollarsDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            productDescriptionLabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 5),
            productDescriptionLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 17)
        ])
        
        
    }
 
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
