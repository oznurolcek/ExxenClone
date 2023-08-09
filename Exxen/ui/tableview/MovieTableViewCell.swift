//
//  MovieTableViewCell.swift
//  Exxen
//
//  Created by Öznur Ölçek on 8.08.2023.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var moviesCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        moviesCollectionView.dataSource = self
        moviesCollectionView.delegate = self
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MovieTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Sections.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = moviesCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.movieImageView.image = UIImage(named: movies[indexPath.row].imageName!)
        cell.movieNameLabel.text = movies[indexPath.row].name
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cell.backgroundColor = .black
    }
    
}
