//
//  Ringtone.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 27.08.2021.
//

import SwiftUI

struct Ringtone: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var vibrationPicker = 1
    
    var body: some View {
                Form {
                    Picker(selection: $vibrationPicker, label: Text("Vibration"), content: {
                        Text("Default").tag(1)
                        Text("None").tag(2)
                    })
                    Section(header: Text("STORE")) {
                        Text("Tone Store")
                            .foregroundColor(.blue)
                        Text("Download All Purchased Tones")
                            .foregroundColor(.blue)
                        Text("This will download all ringrones and alerts purchased using the 'kabeles@icloud.com' account.")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                    Section(header: Text("RINGTONES")) {
                        Text("Opening (Default)")
                        Text("Apex")
                        Text("Beacon")
                        Text("Bulletin")
                        Text("By The Seaside")
                        Text("Chimes")
                        Text("Circuit")
                        Text("Constellation")
                        Text("Cosmic")
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color.blue)
                                .padding(.trailing, -6.0)
                            Text("Back")
                                .foregroundColor(.blue)
                        }
                    })
                    Text("Ringtone")
                        .bold()
                        .padding(.leading, 140)
                        .padding(.trailing, 185)

                }
            }
                .navigationBarBackButtonHidden(true)
    }
}

struct Ringtone_Previews: PreviewProvider {
    static var previews: some View {
        Ringtone()
    }
}
