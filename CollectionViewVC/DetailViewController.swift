//
//  DetailViewController.swift
//  CollectionViewVC
//
//  Created by admin on 17/05/2022.
//

import UIKit

class DetailViewController: UIViewController {
    lazy var imageView: UIImageView = {
         imageView = UIImageView(frame: CGRect(x:10, y:60, width:400, height:700))
         imageView.contentMode = .scaleAspectFill
         imageView.clipsToBounds = true
         return imageView
     }()
    
    var viewModel = DataViewModel()
     
    var rowSelected = 0
//     let images = [
//     UIImage(named: "images"),
//     UIImage(named: "images1"),
//     UIImage(named: "images2"),
//     UIImage(named: "images3"),
//     UIImage(named: "images5"),
//     UIImage(named: "images6"),
//     UIImage(named: "images7"),
//     UIImage(named: "images8"),
//     UIImage(named: "images9"),
//     UIImage(named: "images10"),
//     UIImage(named: "images11"),
//     UIImage(named: "images12")
//     ].compactMap({$0})
    
    var detailCell = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        var imageString = viewModel.imagesArray[rowSelected]
        
//        view.backgroundColor = .red
        print("DetailViewController!!!!")
        print(imageString)
        DispatchQueue.main.async {
            self.imageView.image = imageString
        }
        
        self.title = "Detail Photo"
        
        view.backgroundColor = .opaqueSeparator
        view.addSubview(imageView)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



 
