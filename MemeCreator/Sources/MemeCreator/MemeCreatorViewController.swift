//
//  MemeCreatorViewController.swift
//  
//
//  Created by Sko on 11/7/22.
//

import UIKit

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

        // Do any additional setup after loading the view.
    }
    

   

}
