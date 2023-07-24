//
//  SceneDelegate.swift
//  NewsAppClone
//
//  Created by itzel.du on 2023/07/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let windowScene = (scene as? UIWindowScene) else { return }

    let mainViewController = ViewController()

    window = UIWindow(windowScene: windowScene)
    window?.rootViewController = mainViewController
    window?.makeKeyAndVisible()
  }
}
