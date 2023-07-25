//
//  TopStoriesPageViewController.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/25.
//

import UIKit

final class TopStoriesPageViewController: UIPageViewController {

  private let pages: [UIViewController]

  init(pages: [UIViewController]) {
    self.pages = pages

    super.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal)

    setupStyle()
    setupLayout()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private extension TopStoriesPageViewController {

  func setupStyle() {
    dataSource = self

    if let firstViewController = pages.first {
      setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
    }
  }

  func setupLayout() {

  }
}

extension TopStoriesPageViewController: UIPageViewControllerDataSource {

  func pageViewController(
    _ pageViewController: UIPageViewController,
    viewControllerBefore viewController: UIViewController
  ) -> UIViewController? {
    guard let currentIndex = pages.firstIndex(of: viewController)
    else { return nil }

    let previousIndex = currentIndex - 1

    guard (0..<pages.count) ~= previousIndex
    else { return nil }

    return pages[previousIndex]
  }

  func pageViewController(
    _ pageViewController: UIPageViewController,
    viewControllerAfter viewController: UIViewController
  ) -> UIViewController? {
    guard let currentIndex = pages.firstIndex(of: viewController)
    else { return nil }

    let nextIndex = currentIndex + 1

    guard nextIndex < pages.count
    else { return nil }

    return pages[nextIndex]
  }
}
