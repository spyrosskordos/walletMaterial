//
//  SignInView.swift
//
//
//  Created by Sko on 17/7/22.
//

import Common
import SwiftUI

struct SignInView: View {

    @StateObject var viewModel: SignInViewModel

    var body: some View {
        VStack {
            Spacer()
            Button("Sign In") {
                viewModel.signIn()
            }
            .buttonStyle(RadiusButtonStyle())
            .frame(maxWidth: .infinity)
            .padding()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(viewModel: SignInViewModel(coordinator: MockSignInCoordinatorImpl()))
    }
}
