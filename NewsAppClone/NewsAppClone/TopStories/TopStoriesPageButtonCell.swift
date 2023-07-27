//
//  TopStoriesPageButtonCell.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/25.
//

import UIKit

final class TopStoriesPageButtonCell: UICollectionViewCell {

  private let label: UILabel = .init()
  private let line: UIView = .init()

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
    label.text = "title title title"
    label.textColor = .primary

    line.backgroundColor = .primary
  }

  func setupLayout() {
    [label, line].forEach {
      contentView.addSubview($0)
      $0.translatesAutoresizingMaskIntoConstraints = false
    }

    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: contentView.topAnchor),
      label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),

      line.heightAnchor.constraint(equalToConstant: 1),
      line.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 4),
      line.leadingAnchor.constraint(equalTo: label.leadingAnchor),
      line.trailingAnchor.constraint(equalTo: label.trailingAnchor),
      line.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
    ])
  }
}
