//
//  HighlightTableViewCell.swift
//  Exxen
//
//  Created by Öznur Ölçek on 12.08.2023.
//

import UIKit

class HighlightTableViewCell: UITableViewCell {

    @IBOutlet weak var moviesCollectionView: UICollectionView!
    
    var collectionScrollCount = 50
    
    override func awakeFromNib() {
        super.awakeFromNib()
        moviesCollectionView.dataSource = self
        moviesCollectionView.delegate = self
        
        let design = UICollectionViewFlowLayout()
        design.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        design.minimumInteritemSpacing = 0
        design.minimumLineSpacing = 0
        design.scrollDirection = .horizontal
        
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = screenWidth

        design.itemSize = CGSize(width: itemWidth, height: itemWidth)
        
        moviesCollectionView.collectionViewLayout = design
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}

extension HighlightTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.bounds.size.width, height: 600)
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionScrollCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let scroll = movieData[(moviesCollectionView.tag % movieData[moviesCollectionView.tag].movie!.count)].movie![indexPath.row % movieData[moviesCollectionView.tag].movie!.count]
        
        let cell = moviesCollectionView.dequeueReusableCell(withReuseIdentifier: "highlightCollectionViewCell", for: indexPath) as! HighlightCollectionViewCell
        
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: self.bounds.height - 200.0, width: self.bounds.width, height: 200.0)
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.withAlphaComponent(0.9).cgColor]
        cell.movieImageView.layer.insertSublayer(gradient, at: 0)
      
        
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = cell.movieImageView.bounds
//
//        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
//        gradientLayer.locations = [0.7, 1.0]
//
//        cell.movieImageView.layer.addSublayer(gradientLayer)


        cell.movieImageView.image = UIImage(named: scroll.imageName!)
        cell.movieNameLabel.text = scroll.name!
        
        return cell
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print(collectionScrollCount)
        collectionScrollCount += 50
        moviesCollectionView.reloadData()
    }
}
