//
//  MotionAnimationView.swift
//  hike_app
//
//  Created by Alan Perez on 12/11/24.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES

    @State private var isAnimating: Bool = false
    @State private var randomCircle: Int = Int.random(in: 6...12)

    // MARK: - FUNCTIONS

    /* 1. RANDOM COORDINATE
     * 2. RANDOM SIZE
     * 3. RANDOM SCALE
     * 4. RANDOM SPEED
     * 5. RANDOM DELAY
     */

    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }

    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }

    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }

    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(x: randomCoordinate(), y: randomCoordinate())
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        ) {
                            isAnimating.toggle()
                        }
                    })
                    .scaleEffect(isAnimating ? randomScale() : 1)
            }
        }  //: ZSTACK
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup() //performance rendering just one time
    }
}

#Preview {
        MotionAnimationView()
}
