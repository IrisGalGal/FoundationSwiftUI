//
//  SettingsView.swift
//  PersonalJournal
//
//  Created by Iris GalGal on 1/8/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var isPrivateMode: Bool
    var body: some View {
        VStack{
            Toggle(isOn: $isPrivateMode, label: {
                Text("Private Mode")
            })
            .padding()
        }
    }
}

#Preview {
    SettingsView(isPrivateMode: Binding.constant(false))
}
