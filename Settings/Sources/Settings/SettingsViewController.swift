//
//  SettingsViewController.swift
//  
//
//  Created by Sko on 24/7/22.
//

import UIKit
import Common
class SettingsViewController: UIViewController {

    private var viewModel: SettingsViewModel

    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubSwiftUIView(SettingsView(viewModel: self.viewModel), to: self.view)
    }

}
