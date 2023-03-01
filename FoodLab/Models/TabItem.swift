//
//  TabItem.swift
//  FoodLab
//
//  Created by Sascha Sallès on 17/01/2023.
//

import UIKit

enum TabItem: Int, CaseIterable {
    case home
    case favs

    var navigationController: UINavigationController {
        switch self {
        case .home:
            return makeNavigationViewController(
                rootViewController: HomeViewController()
            )
        case .favs:
            return makeNavigationViewController(
                rootViewController: FavoritesViewController()
            )
        }
    }

    var title: String {
        switch self {
        case .home:     return "Home"
        case .favs:      return "Favorites"
        }
    }

    var image: UIImage? {
        switch self {
        case .home:     return UIImage(systemName: "house.fill")
        case .favs:      return UIImage(systemName: "star.square.fill")
        }
    }

    private func makeNavigationViewController(
        rootViewController: UIViewController
    ) -> UINavigationController {
        let navVC = UINavigationController(
            rootViewController: rootViewController
        )
        navVC.tabBarItem = UITabBarItem(title: title, image: image, tag: rawValue)
        return navVC
    }
}
