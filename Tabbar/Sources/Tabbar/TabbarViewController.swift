//
//  PWFTabbarViewController.swift
//
//
//  Created by Sko on 11/7/22.
//

import UIKit
import Common

class TabbarViewController: UITabBarController, Tabbar {

    private var viewModel: TabbarViewModel

    init(viewModel: TabbarViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func append(viewController: UIViewController) {
        var vcs = viewControllers ?? []
        vcs.append(viewController)
        viewControllers = vcs
    }
}
