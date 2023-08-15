//
//  ViewController.swift
//  Exxen
//
//  Created by Öznur Ölçek on 8.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var moviesTableView: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        
        //MARK: logo title
        
        
 
        
        
        moviesTableView.backgroundColor = UIColor(named: "BackgroundColor")
        moviesTableView.sectionHeaderTopPadding = 0
        moviesTableView.contentInset = UIEdgeInsets(top: -100, left: 0, bottom: 0, right: 0)

    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return movieData.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            return nil
        default:
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            let label = UILabel(frame: CGRect(x: 5, y: 5, width: tableView.frame.width, height: 20))
            label.font = UIFont(name: "Lato", size: 20.0)
            label.text = movieData[section].sectionType
            label.textColor = .white
            label.textAlignment = .natural
            view.addSubview(label)
            return view
        }
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0:
//            return nil
//        default:
//            return movieData[section].sectionType
//        }
//
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = moviesTableView.dequeueReusableCell(withIdentifier: "highlightTableViewCell", for: indexPath) as! HighlightTableViewCell
            cell.moviesCollectionView.tag = indexPath.section
            return cell
        default:
            let cell = moviesTableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! MovieTableViewCell
            cell.moviesCollectionView.tag = indexPath.section
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 600
        default:
            return 300
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 1
        default:
            return 16
            
        }
    }
    
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        view.tintColor = .black
//    }

//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.backgroundColor = .black
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moviesTableView.deselectRow(at: indexPath, animated: false)
    }
    

    
    
}

