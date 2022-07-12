//
//  MemeCreatorViewController.swift
//  
//
//  Created by Sko on 11/7/22.
//

import UIKit
import Common
class MemeCreatorViewController: UITabBarController {

    private var viewModel: MemeCreatorViewModel

    init(viewModel: MemeCreatorViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubSwiftUIView(MemeCreatorView(viewModel: self.viewModel), to: self.view)
    }
    

   

}
