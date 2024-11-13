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
                .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity /*@END_MENU_TOKEN@*/)
            }  //: HEADER
            .listRowSeparator(.hidden)

            // MARK: - SECTION: ICONS

            // MARK: - SECTION: ABOUT

            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()

                    Text("Copyright © All right reserved.")

                    Spacer()
                }
                .padding(.vertical, 8)
            ) {
                // 1. Basic Labeled Content

                // LabeledContent("Application", value: "Hike")

                // 2. Advanced Labeled Content

                CustomListRowView(
                    rowIcon: "apps.iphone", rowLabel: "Application", rowContent: "Hike",
                    rowTintColor: .blue)
                
                CustomListRowView(
                    rowIcon: "info.circle", rowLabel: "Compatibility", rowContent: "iOS, iPadOs",
                    rowTintColor: .red)
                
                CustomListRowView(
                    rowIcon: "swift", rowLabel: "Technology", rowContent: "Swift",
                    rowTintColor: .orange)
                
                CustomListRowView(
                    rowIcon: "gear", rowLabel: "Version", rowContent: "1.0",
                    rowTintColor: .purple)
                
                CustomListRowView(
                    rowIcon: "ellipsis.curlybraces", rowLabel: "Developer", rowContent: "Alan Perez",
                    rowTintColor: .mint)
                
                CustomListRowView(
                    rowIcon: "paintpalette", rowLabel: "Designer", rowContent: "Robert Petras",
                    rowTintColor: .pink)
                
                CustomListRowView(
                    rowIcon: "globe", rowLabel: "Website", rowContent: "https://credo.academy",
                    rowTintColor: .indigo)

            }  //: SECTION

        }  //: LIST
    }
}

#Preview {
    SettingsView()
}
