//
//  SwiftUIView.swift
//  
//
//  Created by Sko on 19/7/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @StateObject var viewModel: SplashScreenViewModel
    
    var body: some View {
        ZStack {
            ProgressView("Loading..").font(.title)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView(viewModel: SplashScreenViewModel(coordinator: MockSplashScreenCoordinatorImpl()))
    }
}
