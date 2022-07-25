//
//  SettingsView.swift
//  
//
//  Created by Sko on 24/7/22.
//

import SwiftUI

struct SettingsView: View {
    
    @StateObject var viewModel: SettingsViewModel
    
    var body: some View {
       Text("Settings")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewModel: SettingsViewModel(coordinator: MockSettingsCoordinatorImpl()))
    }
}
