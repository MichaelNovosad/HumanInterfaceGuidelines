//
//  Favorites.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 04.09.2021.
//

import SwiftUI

struct Favorites: View {
    @Environment(\.presentationMode) var presentationMode
    
    init() {
        UIToolbar.appearance().barTintColor = UIColor.white
    }
    var body: some View {
            Group {
                List {
                    HStack {
                        Image(systemName: "person.circle")
                            .font(.title)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading) {
                            Text("John Baily")
                                .bold()
                            HStack {
                                Image(systemName: "message.fill")
                                Text("Messages")
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title3)
                            .foregroundColor(.blue)
                            .padding(5)
                    }
                    HStack {
                        Image(systemName: "person.circle")
                            .font(.title)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading) {
                            Text("Chella Boehm")
                                .bold()
                            HStack {
                                Image(systemName: "phone.fill")
                                Text("iPhone")
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title3)
                            .foregroundColor(.blue)
                            .padding(5)
                    }
                    HStack {
                        Image(systemName: "person.circle")
                            .font(.title)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading) {
                            Text("Gary Butcher")
                                .bold()
                            HStack {
                                Image(systemName: "message.fill")
                                Text("Messages")
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title3)
                            .foregroundColor(.blue)
                            .padding(5)
                    }
                    HStack {
                        Image(systemName: "person.circle")
                            .font(.title)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading) {
                            Text("Vera Carr")
                                .bold()
                            HStack {
                                Image(systemName: "message.fill")
                                Text("mobile")
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title3)
                            .foregroundColor(.blue)
                            .padding(5)
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    HStack(alignment: .bottom, spacing: 1) {
                        VStack {
                            Image(systemName: "star.fill")
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                                .padding(1)
                            Text("Favorites")
                                .font(.caption2)
                                .foregroundColor(.blue)
                        }
                        .padding()
                        .scaledToFill()
                        VStack {
                            Image(systemName: "clock.fill")
                                .font(.largeTitle)
                                .foregroundColor(.gray)
                                .padding(1)
                            Text("Recents")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .scaledToFill()
                        VStack {
                            Image(systemName: "person.2.fill")
                                .font(.largeTitle)
                                .foregroundColor(.gray)
                                .padding(1)
                            Text("Contacts")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .scaledToFill()
                        VStack {
                            Image(systemName: "keyboard")
                                .font(.largeTitle)
                                .foregroundColor(.gray)
                                .padding(1)
                            Text("Keypad")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                        .scaledToFill()
                        .padding()
                        VStack {
                            Image(systemName: "recordingtape")
                                .font(.largeTitle)
                                .foregroundColor(.gray)
                                .padding(1)
                            Text("Voicemail")
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                        .scaledToFill()
                        .padding()
                    }
                    .padding(.top)
                }
            }
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "plus")
            }, trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Edit")
            })
            .navigationBarTitle("Favorites")
            .navigationBarBackButtonHidden(true)
    }
}

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
    }
}
