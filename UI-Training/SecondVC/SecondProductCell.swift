//
//  SecondProductCell.swift
//  UI-Training
//
//  Created by Eldiiar on 18/2/22.
//

import UIKit

class SecondProductCell: UITableViewCell {
    var product : SecondProduct? {
        didSet {
            productImage.image = product?.productImage
            productNameLabel.text = product?.productName
            productPriceLabel.text = product?.price
            productDescription.text = product?.description
        }
    }
    
    private let productNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = .systemFont(ofSize: 20)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
 
 
    private let productDescription : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = .systemFont(ofSize: 16)
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
    
    private let productPriceLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = .boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(productNameLabel)
        addSubview(productImage)
        addSubview(productDescription)
        addSubview(productPriceLabel)
        
        NSLayoutConstraint.activate([
            productImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            productImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            productImage.widthAnchor.constraint(equalToConstant: 50),
            productImage.heightAnchor.constraint(equalToConstant: 50),
            
            productNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            productNameLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 10),
            
            productPriceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            productPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            productDescription.topAnchor.constraint(equalTo: productPriceLabel.bottomAnchor),
            productDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}
