//
//  DetailViewController.swift
//  CollectionViewVC
//
//  Created by admin on 17/05/2022.
//

import UIKit

class DetailViewController: UIViewController {
    lazy var imageView: UIImageView = {
     
       let myimageView = UIImageView(frame: CGRect(x:5,
                                                   y:65,
                                                   width:404,
                                                   height:600))
         myimageView.contentMode = .scaleAspectFill
       
         myimageView.clipsToBounds = true
         return myimageView
     }()
    
    private let myLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:150,
                                          y:5,
                                          width:160,
                                          height:50))
        label.font = label.font.withSize(20)
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        label.clipsToBounds = true
        label.text = "Detail Photo"
        
       
        
        return label
    }()
    
    var viewModel = DataViewModel()
     
    var rowSelected = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        var imageString = viewModel.imagesArray[rowSelected]
        
        print("DetailViewController!!!!")
        print(imageString)
        DispatchQueue.main.async {
            self.imageView.image = imageString
        }
        
        
        view.backgroundColor = .opaqueSeparator
        view.addSubview(myLabel)
        view.addSubview(imageView)
        
        
        
    }
    

    

}



 
