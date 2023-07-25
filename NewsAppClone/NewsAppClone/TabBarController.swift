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

    setupStyle()

    let topStoriesPageViewController: TopStoriesPageViewController = .init(pages: [TopStoriesViewController(), ForYouViewController()])

    let topStoriesNavViewController: UINavigationController = .init(rootViewController: topStoriesPageViewController)
    topStoriesPageViewController.navigationItem.title = "The Wasingthon Post"
    topStoriesNavViewController.tabBarItem.title = "Top Stories"
    topStoriesNavViewController.tabBarItem.image = .init(systemName: "house")
    topStoriesNavViewController.tabBarItem.tag = 0

    viewControllers = [topStoriesNavViewController]
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private extension TabBarController {

  func setupStyle() {
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = .background
    tabBar.standardAppearance = appearance
    tabBar.scrollEdgeAppearance = tabBar.standardAppearance
  }
}
