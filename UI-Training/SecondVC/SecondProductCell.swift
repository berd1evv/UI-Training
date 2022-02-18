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
        lbl.frame = CGRect(x: 70, y: 0, width: 120, height: 50)
        lbl.textAlignment = .left
        return lbl
    }()
 
 
    private let productDescription : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = .systemFont(ofSize: 16)
        lbl.frame = CGRect(x: 320, y: 10, width: 90, height: 50)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let productImage : UIImageView = {
        let imgView = UIImageView(image: UIImage(named: "bch"))
        imgView.contentMode = .scaleAspectFit
        imgView.frame = CGRect(x: 10, y: 5, width: 50, height: 50)
        imgView.clipsToBounds = true
        return imgView
    }()
    
    private let productPriceLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.frame = CGRect(x: 350, y: -10, width: 90, height: 50)
        lbl.font = .boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(productNameLabel)
        addSubview(productImage)
        addSubview(productDescription)
        addSubview(productPriceLabel)
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}
