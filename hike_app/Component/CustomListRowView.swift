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
    @State var rowContent: String
    @State var rowTintColor: Color

    var body: some View {
        LabeledContent {
            Text(rowContent)
                .foregroundStyle(.primary)
                .fontWeight(.bold)
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
        rowIcon: "paintpalette", rowLabel: "Designer", rowContent: "John Doe", rowTintColor: .pink)
}
