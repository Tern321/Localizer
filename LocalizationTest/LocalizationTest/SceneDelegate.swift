//
//  SceneDelegate.swift
//  LocalizationTest
//
//  Created by Evgenii Loshchenko on 06.03.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            
        // "test 1\".localized, "test g".localized
        _ = "test 1".localized + "test \"\" 1a".localized + "test 1b".localized
        _ = """
test 2 line 1
test 2 \"line 2
test 2 line 3
""".localized + "test m\"\"l2".localized
        
        _ = """
test 5 line 1
test 5 line 2
""".localized + "test m\"\"l2".localized
        _ = "test 3".localized
        // "text field text".localized
        //_ = "test 4".localized
        guard let _ = (scene as? UIWindowScene) else { return }
    }
}
