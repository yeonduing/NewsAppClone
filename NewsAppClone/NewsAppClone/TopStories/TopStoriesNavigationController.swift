//
//  TopStoriesNavigationController.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/25.
//

import UIKit

final class TopStoriesNavigationController: UINavigationController {

  private let pageCollectionView: UICollectionView = .init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

  override init(rootViewController: UIViewController) {
    super.init(rootViewController: rootViewController)

    setupStyle()
    setupLayout()
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
      pageCollectionView.heightAnchor.constraint(equalToConstant: 40)
    ])
  }

  func setupCollectionView() {
    pageCollectionView.delegate = self
    pageCollectionView.dataSource = self
    pageCollectionView.registerCell(ofType: TopStoriesPageButtonCell.self)
  }
}

extension TopStoriesNavigationController: UICollectionViewDelegateFlowLayout {

  func collectionView(
    _ collectionView: UICollectionView,
    layout collectionViewLayout: UICollectionViewLayout,
    sizeForItemAt indexPath: IndexPath
  ) -> CGSize {
    .init(width: 80, height: 40)
  }
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
