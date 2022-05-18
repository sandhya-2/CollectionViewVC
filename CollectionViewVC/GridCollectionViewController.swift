//
//  GridCollectionViewController.swift
//  CollectionViewVC
//
//  Created by admin on 17/05/2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class GridCollectionViewController: UICollectionViewController {
   
    var imagesArray: [UIImage] = [
    UIImage(named: "images"),
    UIImage(named: "images1"),
    UIImage(named: "images2"),
    UIImage(named: "images3"),
    UIImage(named: "images4"),
    UIImage(named: "images5"),
    UIImage(named: "images6"),
    UIImage(named: "images7"),
    UIImage(named: "images8"),
    UIImage(named: "images9"),
    UIImage(named: "images10"),
    UIImage(named: "images11"),
    UIImage(named: "images12")
    ].compactMap({$0})
   
    private let myLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:148,
                                          y:15,
                                          width:140,
                                          height:50))
        label.font = label.font.withSize(20)
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        label.clipsToBounds = true
        label.text = "Photo Gallery"
        
    
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = "Hello"
        collectionView?.backgroundColor = .systemBackground
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        
        view.addSubview(collectionView)
        view.addSubview(myLabel)
    }

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imagesArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }

        // Configure the cell
        
        cell.imageView.image = imagesArray[indexPath.row]
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        print("Did tap cell at position: \(indexPath.row)")
        let detailVC = DetailViewController()
        detailVC.rowSelected = indexPath.row

        let navController = UINavigationController(rootViewController: detailVC)
        present(navController, animated: true, completion: nil)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: (view.frame.size.width/3)-3,
            height: (view.frame.size.width/3)-3)
//        subtracting 3 for padding
    }
    
    /**this is padding between cell**/
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    /*flushing the images at the edge so to fix it. write below
     this will have nice spacing on left, right, top and bottom*/
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }

}
