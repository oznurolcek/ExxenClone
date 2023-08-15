//
//  NavBarController.swift
//  Exxen
//
//  Created by Öznur Ölçek on 15.08.2023.
//

import UIKit

class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 270, height: 40))

         let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 270, height: 40))
         imageView.contentMode = .scaleAspectFit
         let image = UIImage(named: "Exxen")
         imageView.image = image
         logoContainer.addSubview(imageView)
         navigationItem.titleView = logoContainer
        
        navigationItem.rightBarButtonItem?.tintColor = .white

        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .clear
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}
