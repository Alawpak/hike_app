//
//  CustomBackgroundView.swift
//  hike_app
//
//  Created by Alan Perez on 12/11/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
             
            // MARK: - 2. LIGHT
            
            Color.customGreenLight
                .cornerRadius(40)
                .opacity(0.85)
                .offset(y: 3)
            
            // MARK: - 1. SURFACE

            LinearGradient(
                colors: [Color.customGreenLight, Color.customGreenMedium], startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView().padding()
}
