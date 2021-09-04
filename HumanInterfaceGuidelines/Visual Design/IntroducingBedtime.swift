//
//  IntroducingBedtime.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 03.09.2021.
//

import SwiftUI

struct IntroducingBedtime: View {
    @Environment(\.presentationMode) var presentationMode
    
    init() {
        UIToolbar.appearance().barTintColor = UIColor.black
    }
    var body: some View {
        ZStack {
            Color.black
            Group {
                VStack {
                    VStack {
                        Image(systemName: "bed.double.fill")
                            .font(.largeTitle)
                            .padding()
                        Text("Introducing Bedtime")
                            .font(.title)
                            .padding()
                        Text("Going to bed and waking up at the same times every day are keys to healthy sleep.")
                            .font(.headline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                    }
                    .foregroundColor(.white)
                    .padding()
                    VStack {
                        Text("Bedtime can help.")
                            .font(.headline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        Text("Answer a few simple questions to set up a recurring wake-up alarm and get a reminder when it's bedtime.")
                            .font(.headline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                    }
                    .foregroundColor(.white)
                    .padding()
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Get Started")
                                .font(.title2)
                                .fontWeight(.medium)
                                
                                .padding(.horizontal, 100)
                                .padding(.vertical, 15)
                                .clipShape(Capsule())
                                .foregroundColor(.black)
                                .background(Color.orange)
                                .cornerRadius(10.0)
                                .blur(radius: 0.5)
                        })
                        .foregroundColor(.orange)
                    }
                    .padding(.top, 250)
                }
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        Text("Bedtime")
                            .foregroundColor(.white)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.leading, 150)
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    HStack(alignment: .bottom, spacing: 25) {
                        VStack {
                            Image(systemName: "globe")
                                .font(.title)
                            Text("World Clock")
                                .font(.subheadline)
                        }
                        .foregroundColor(.gray)
                        VStack {
                            Image(systemName: "alarm.fill")
                                .font(.title)
                            Text("Alarm")
                                .font(.subheadline)
                        }
                        .foregroundColor(.gray)
                        
                        VStack {
                            Image(systemName: "bed.double.fill")
                                .font(.title)
                            Text("Bedtime")
                                .font(.subheadline)
                            
                        }
                        .foregroundColor(.orange)
                        VStack {
                            Image(systemName: "stopwatch.fill")
                                .font(.title)
                            Text("Stopwatch")
                                .font(.subheadline)
                            }
                            .foregroundColor(.gray)
                            
                            VStack {
                                Image(systemName: "timer")
                                    .font(.title)
                                Text("Timer")
                                    .font(.subheadline)
                                
                            }
                            .foregroundColor(.gray)
                        }
                        .padding()
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
            .ignoresSafeArea(.all)
    }
}

struct IntroducingBedtime_Previews: PreviewProvider {
    static var previews: some View {
        IntroducingBedtime()
    }
}
