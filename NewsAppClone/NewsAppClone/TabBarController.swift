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
    topStoriesPageViewController.navigationItem.title = "The Wasingthon Post"

    let topStoriesNavigationController: TopStoriesNavigationController = .init(rootViewController: topStoriesPageViewController)

    viewControllers = [topStoriesNavigationController]
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
