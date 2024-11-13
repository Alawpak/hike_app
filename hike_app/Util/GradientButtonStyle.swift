//
//  GradientButtonStyle.swift
//  hike_app
//
//  Created by Alan Perez on 12/11/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                /* Conditional Statement with Nil Coalescing
                 * Condition ? A : B
                 * A: When user pressed the button
                 * B: When the Button is not pressed
                */

                configuration.isPressed
                    ? LinearGradient(
                        colors: [.customGrayMedium, .customGrayLight], startPoint: .top,
                        endPoint: .bottom)
                    : LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium], startPoint: .top,
                        endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
