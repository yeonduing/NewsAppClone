//
//  TopStoriesPageButtonCell.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/25.
//

import UIKit

final class TopStoriesPageButtonCell: UICollectionViewCell {

  private let label: UILabel = .init()

  override init(frame: CGRect) {
    super.init(frame: frame)

    setupStyle()
    setupLayout()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private extension TopStoriesPageButtonCell {

  func setupStyle() {
    label.text = "title"
  }

  func setupLayout() {
    contentView.addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
    ])
  }
}
