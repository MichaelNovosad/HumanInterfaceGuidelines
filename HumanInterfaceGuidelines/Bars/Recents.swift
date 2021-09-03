//
//  Recents.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 03.09.2021.
//

import SwiftUI

struct Recents: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var pickerSelector = 1
    var body: some View {
            Group {
                List {
                    HStack {
                        VStack(alignment: .leading) {
                            HStack(alignment: .top) {
                                Image(systemName: "phone.fill.arrow.up.right")
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                                VStack(alignment: .leading) {
                                Text("Eliza Block")
                                    .font(.body)
                                    .fontWeight(.bold)
                                Text("iPhone")
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.gray)
                                }
                            }
                                
                        }
                        Spacer()
                        HStack {
                            Text("9:41 AM")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                            Image(systemName: "info.circle")
                                .font(.title2)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(5)
                    HStack {
                        VStack(alignment: .leading) {
                            HStack(alignment: .top) {
                                Image(systemName: "phone.fill.arrow.up.right")
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                                VStack(alignment: .leading) {
                                Text("John Baily")
                                    .font(.body)
                                    .fontWeight(.bold)
                                Text("iPhone")
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.gray)
                                }
                            }
                                
                        }
                        Spacer()
                        HStack {
                            Text("10:41 AM")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                            Image(systemName: "info.circle")
                                .font(.title2)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(5)
                    HStack {
                        VStack(alignment: .leading) {
                            HStack(alignment: .top) {
                                Image(systemName: "phone.fill.arrow.up.right")
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                                VStack(alignment: .leading) {
                                Text("Greg Apodaca")
                                    .font(.body)
                                    .fontWeight(.bold)
                                Text("mobile")
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.gray)
                                }
                            }
                                
                        }
                        Spacer()
                        HStack {
                            Text("12:34 PM")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                            Image(systemName: "info.circle")
                                .font(.title2)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(5)
                    HStack {
                        VStack(alignment: .leading) {
                            HStack(alignment: .top) {
                                Image(systemName: "phone.fill.arrow.up.right")
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                                VStack(alignment: .leading) {
                                Text("Katie Abeles")
                                    .font(.body)
                                    .fontWeight(.bold)
                                Text("mobile")
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.gray)
                                }
                            }
                                
                        }
                        Spacer()
                        HStack {
                            Text("2:03 PM")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            
                            Image(systemName: "info.circle")
                                .font(.title2)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(5)
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Picker(selection: $pickerSelector, label: Text("Picker"), content: {
                        Text("All").tag(1)
                        Text("Missed").tag(2)
                    })
                    .padding(90)
                    .pickerStyle(SegmentedPickerStyle())
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Edit")
                        .foregroundColor(.blue)
                    }
                }
        }
            .navigationBarTitle("Recents")
            .navigationBarBackButtonHidden(true)
    }
}

struct Recents_Previews: PreviewProvider {
    static var previews: some View {
        Recents()
    }
}
