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
        
        productImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.centerY.equalToSuperview()
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        productNameLabel.snp.makeConstraints { make in
            make.left.equalTo(productImage).offset(60)
            make.top.equalToSuperview().offset(15)
        }
        
        productPriceLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-20)
        }
        
        productDescription.snp.makeConstraints { make in
            make.top.equalTo(productPriceLabel).offset(20)
            make.right.equalToSuperview().offset(-20)
        }
    }
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}
