//
//  MovieTableViewCell.swift
//  Exxen
//
//  Created by Öznur Ölçek on 8.08.2023.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var moviesCollectionView: UICollectionView!
    
    var collectionScrollCount = 50
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        moviesCollectionView.dataSource = self
        moviesCollectionView.delegate = self
        
        moviesCollectionView.frame = contentView.bounds
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension MovieTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionScrollCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = moviesCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.movieImageView.image = UIImage(named: movieData[(moviesCollectionView.tag % movieData[moviesCollectionView.tag].movie!.count)].movie![indexPath.row % movieData[moviesCollectionView.tag].movie!.count].imageName!)
        cell.layer.cornerRadius = 10
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cell.backgroundColor = .black
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print(collectionScrollCount)
        collectionScrollCount += 50
        moviesCollectionView.reloadData()
    }
}
