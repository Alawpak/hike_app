//
//  SettingsView.swift
//  hike_app
//
//  Created by Alan Perez on 13/11/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            Section {

                HStack {
                    Spacer()

                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))

                    VStack(spacing: -10) {
                        Text("HIKE")
                            .font(.system(size: 66, weight: .black))

                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }

                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))

                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [.customGreenLight, .customGreenMedium, .customGreenDark],
                        startPoint: .top, endPoint: .bottom))

                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)

                    Text(
                        "The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app."
                    )
                    .font(.footnote)
                    .italic()

                    Text(
                        "Dust off the boots! It's time for a walk."
                    )
                    .fontWeight(.heavy)
                    .foregroundColor(.customGreenMedium)
                }
                .padding(.bottom, 16)
                .multilineTextAlignment(.center)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }  //: HEADER
            .listRowSeparator(.hidden)

            // MARK: - SECTION: ICONS

            // MARK: - SECTION: ABOUT

        }  //: LIST
    }
}

#Preview {
    SettingsView()
}
