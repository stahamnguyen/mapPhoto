//
//  CollectionViewToDisplayPhoto.swift
//  MapImplementation
//
//  Created by Staham Nguyen on 20/09/2017.
//  Copyright © 2017 Staham Nguyen. All rights reserved.
//

import UIKit

extension MapVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifier.ofCollectionViewCell, for: indexPath)
        let image = imageArray[indexPath.row]
        let imageView = UIImageView(image: image)
        cell.addSubview(imageView)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let popVC = storyboard?.instantiateViewController(withIdentifier: Identifier.ofPopVC) as? PopVC else { return }
        popVC.initData(forImage: imageArray[indexPath.row])
        present(popVC, animated: true, completion: nil)
    }
}
