//
//  CollectionViewCell.swift
//  CollectionViewVC
//
//  Created by admin on 17/05/2022.
//

import UIKit
import Foundation

class CollectionViewCell: UICollectionViewCell {
    static let identifier = "Cell"
    var viewModel = DataViewModel()
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.clipsToBounds = true
        
        var images = [
        UIImage(named: "images"),
        UIImage(named: "images1"),
        UIImage(named: "images2"),
        UIImage(named: "images3"),
        UIImage(named: "images5"),
        UIImage(named: "images6"),
        UIImage(named: "images7"),
        UIImage(named: "images8"),
        UIImage(named: "images9"),
        UIImage(named: "images10"),
        UIImage(named: "images11"),
        UIImage(named: "images12")
        ].compactMap({$0})
        
        
        
        for i in 0..<images.count
        {
            imageView.image = (images[i])
            print("index: \(i)")
        }
        
//        imageView.image = images.randomElement()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        imageView.image = nil
    }
    
    
}
