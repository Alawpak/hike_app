//
//  CardView.swift
//  hike_app
//
//  Created by Alan Perez on 12/11/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD

        ZStack {
            CustomBackgroundView()

            VStack {

                // MARK: - HEADER

                VStack(alignment: .leading) {

                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium],
                                    startPoint: .top, endPoint: .bottom))

                        Spacer()

                        Button {
                            print("hola")
                        } label: {
                            CustomButtonView()
                        }
                    }

                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(
                            .leading
                        )
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }  //: HEADER
                .padding(.horizontal, 30)

                // MARK: - MAIN CONTENT

                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")],
                                startPoint: .topLeading, endPoint: .bottomLeading)
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }

                //MARK: - FOOTER

                Button {
                    print("The button was pressed.")
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLight, .customGreenMedium], startPoint: .top,
                                endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
