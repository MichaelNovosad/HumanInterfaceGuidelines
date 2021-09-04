//
//  Onboarding.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 04.09.2021.
//

import SwiftUI

struct Onboarding: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Group {
            VStack {
                Spacer()
                Text("What's New")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("More Personalized")
                                .bold()
                            Text("Top Stories picked for you and recommendations from Siri.")
                        }
                    }
                    .padding()
                    HStack {
                        Image(systemName: "square")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("New Spotlight Tab")
                                .bold()
                            Text("Discover great stories selected by our editors.")
                        }
                    }
                    .padding()
                    HStack {
                        Image(systemName: "rectangle.fill")
                            .foregroundColor(.blue)
                            .font(.largeTitle)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Video in Today View")
                                .bold()
                            Text("The day's best videos, right in the News widget.")
                        }
                    }
                    .padding()
                }
                .padding(.horizontal, 25)
                Spacer()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Next")
                        .bold()
                        .padding(.horizontal, 135)
                        .padding(.vertical, 20)
                        .clipShape(Capsule())
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                })
            }
            .padding()
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
