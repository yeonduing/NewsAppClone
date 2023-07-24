//
//  TabBarController.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/24.
//

import UIKit

final class TabBarController: UITabBarController {

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

    let topStoriesViewController: TopStoriesViewController = .init()

    let topStoriesNavViewController: UINavigationController = .init(rootViewController: topStoriesViewController)
    topStoriesViewController.navigationItem.title = "The Wasingthon Post"
    topStoriesNavViewController.navigationBar.prefersLargeTitles = true
    topStoriesNavViewController.tabBarItem.title = "Top Stories"
    topStoriesNavViewController.tabBarItem.image = .init(systemName: "house")
    topStoriesNavViewController.tabBarItem.tag = 0

    viewControllers = [topStoriesNavViewController]
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

