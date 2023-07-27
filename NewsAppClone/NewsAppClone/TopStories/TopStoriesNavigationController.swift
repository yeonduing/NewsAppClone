//
//  TopStoriesNavigationController.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/25.
//

import UIKit

final class TopStoriesNavigationController: UINavigationController {

  private let pageCollectionView: TopStoriesPageCollectionView = .init()

  override init(rootViewController: UIViewController) {
    super.init(rootViewController: rootViewController)

    setupStyle()
    setupLayout()
    setupCollectionView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private extension TopStoriesNavigationController {

  func setupStyle() {
    tabBarItem.title = "Top Stories"
    tabBarItem.image = .init(systemName: "house")
    tabBarItem.tag = 0
  }

  func setupLayout() {
    view.addSubview(pageCollectionView)
    pageCollectionView.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      pageCollectionView.topAnchor.constraint(equalTo: navigationBar.bottomAnchor),
      pageCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      pageCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      pageCollectionView.heightAnchor.constraint(equalToConstant: 25.33)
    ])
  }

  func setupCollectionView() {
    pageCollectionView.delegate = self
    pageCollectionView.dataSource = self
  }
}

extension TopStoriesNavigationController: UICollectionViewDelegateFlowLayout {

}

extension TopStoriesNavigationController: UICollectionViewDataSource {

  func collectionView(
    _ collectionView: UICollectionView,
    numberOfItemsInSection section: Int
  ) -> Int {
    2
  }

  func collectionView(
    _ collectionView: UICollectionView,
    cellForItemAt indexPath: IndexPath
  ) -> UICollectionViewCell {
    let cell: TopStoriesPageButtonCell = collectionView.dequeueReusableCell(for: indexPath)

    return cell
  }
}
