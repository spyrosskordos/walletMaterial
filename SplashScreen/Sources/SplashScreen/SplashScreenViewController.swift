//
//  SplashScreenViewController.swift
//  
//
//  Created by Sko on 19/7/22.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    private var viewModel: SplashScreenViewModel

    init(viewModel: SplashScreenViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubSwiftUIView(SplashScreenView(viewModel: self.viewModel), to: self.view)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
