//
//  GridCollectionViewController.swift
//  CollectionViewVC
//
//  Created by admin on 17/05/2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class GridCollectionViewController: UICollectionViewController {
    
    var imagesArray = [
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
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .systemBackground
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        view.addSubview(collectionView)
    }

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 42
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        cell.backgroundColor = .green
        // Configure the cell
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        print("Did tap cell at position: \(indexPath.row)")
        let detailVC = DetailViewController()
        detailVC.rowSelected = indexPath.row

            let navController = UINavigationController(rootViewController: detailVC)
            present(navController, animated: true, completion: nil)
        
    }


}
