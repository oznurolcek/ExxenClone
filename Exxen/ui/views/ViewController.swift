//
//  ViewController.swift
//  Exxen
//
//  Created by Öznur Ölçek on 8.08.2023.
//

import UIKit

var movies: [Movies] = [
    Movies(id: 1, name: "Sizi Dinliyorum", imageName: "sizidinliyorum", section: .highlights),
    Movies(id: 2, name: "Konuşanlar", imageName: "konusanlar", section: .highlights),
    Movies(id: 3, name: "O Ses Türkiye Rap", imageName: "osesturkiyerap", section: .highlights),
    Movies(id: 4, name: "Gibi", imageName: "gibi", section: .highlights),
    Movies(id: 5, name: "Leyla ile Mecnun", imageName: "leylailemecnun", section: .highlights),
    Movies(id: 6, name: "Hükümsüz", imageName: "hukumsuz", section: .highlights),
    Movies(id: 7, name: "Aşk Kumardır", imageName: "askkumardir", section: .highlights),
    Movies(id: 8, name: "Sadece Arkadaşız", imageName: "sadecearkadasiz", section: .highlights),
    Movies(id: 9, name: "Tolgshow Filtresiz", imageName: "tolgshowfiltresiz", section: .highlights)
]

class ViewController: UIViewController {
    
    @IBOutlet weak var moviesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        
        let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 270, height: 40))

         let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 270, height: 40))
         imageView.contentMode = .scaleAspectFit
         let image = UIImage(named: "Exxen")
         imageView.image = image
         logoContainer.addSubview(imageView)
         navigationItem.titleView = logoContainer
        
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        moviesTableView.backgroundColor = UIColor(named: "BackgroundColor")
        
        moviesTableView.sectionHeaderTopPadding = 0
        
        
        


    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return movies.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        print("section: \(movies[section].section!)")


        return movies[section].section as? String
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = moviesTableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! MovieTableViewCell
        cell.moviesCollectionView.tag = indexPath.section
        return cell
    }
    
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        view.tintColor = .black
//    }

//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.backgroundColor = .black
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moviesTableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}

