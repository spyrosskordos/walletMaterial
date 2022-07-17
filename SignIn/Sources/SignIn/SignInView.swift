//
//  SignInView.swift
//  
//
//  Created by Sko on 17/7/22.
//

import SwiftUI

struct SignInView: View {
    
    @StateObject var viewModel: SignInViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(viewModel: SignInViewModel(coordinator: MockSignInCoordinatorImpl()))
    }
}
