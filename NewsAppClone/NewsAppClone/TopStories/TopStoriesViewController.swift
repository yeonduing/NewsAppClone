//
//  TopStoriesViewController.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/24.
//

import UIKit

final class TopStoriesViewController: UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)

    setupStyle()
    setupLayout()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private extension TopStoriesViewController {

  func setupStyle() {
    view.backgroundColor = .background
  }

  func setupLayout() {

  }
}
