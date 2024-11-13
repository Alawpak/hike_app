//
//  CustomListRowView.swift
//  hike_app
//
//  Created by Alan Perez on 13/11/24.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES

    @State var rowIcon: String
    @State var rowLabel: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil

    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundStyle(.primary)
                    .fontWeight(.bold)
            } else if rowLinkLabel != nil && rowLinkDestination != nil {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .fontWeight(.bold)
                    .foregroundColor(.pink)
            } else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    CustomListRowView(
        rowIcon: "globe",
        rowLabel: "Website",
        rowContent: nil,
        rowTintColor: .pink,
        rowLinkLabel: "Credo Academy",
        rowLinkDestination: "https://credo.academy")
}
