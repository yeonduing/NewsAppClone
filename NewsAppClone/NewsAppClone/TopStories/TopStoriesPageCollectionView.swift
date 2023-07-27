//
//  TopStoriesPageCollectionView.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/25.
//

import UIKit

final class TopStoriesPageCollectionView: UICollectionView {

  init() {
    let layout: UICollectionViewFlowLayout = .init()
    layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize

    super.init(frame: .zero, collectionViewLayout: layout)

    registerViews()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

private extension TopStoriesPageCollectionView {

  func registerViews() {
    registerCell(ofType: TopStoriesPageButtonCell.self)
  }
}
