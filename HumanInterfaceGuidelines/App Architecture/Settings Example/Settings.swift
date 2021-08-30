//
//  Settings.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 26.08.2021.
//

import SwiftUI

struct Settings: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var toggleIsOn = true
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Units")) {
                    NavigationLink(
                        destination:
                            VStack(alignment: .leading) {
                                Text("United States")
                                Text("Fahrenheit, miles, mph")
                            }) {
                        VStack(alignment: .leading) {
                            Text("United States")
                            Text("Fahrenheit, miles, mph")
                                .font(.footnote)
                        }
                    }
                }
                Section(header: Text("Appearance")) {
                    NavigationLink(
                        destination:
                            VStack(alignment: .leading) {
                                Text("Light")
                                Text("Dark text on light background")
                            }) {
                        VStack(alignment: .leading) {
                            Text("Light")
                            Text("Dark text on light background")
                                .font(.footnote)
                        }
                    }
                }
                Section(header: Text("Privacy")) {
                    HStack {
                        Toggle(isOn: $toggleIsOn) {
                            VStack(alignment: .leading) {
                                Text("Show Analytics")
                                Text("Anonymous screen view and event stats")
                                    .font(.footnote)
                            }
                            .padding(.all, 3)
                        }
                        .foregroundColor(.blue)
                    }
                    NavigationLink(
                        destination:
                            Text("Privacy policy")
                    ) {
                        Text("Privacy policy")
                    }
                }
                Section(header: Text("Help")) {
                    HStack{
                        Text("Version")
                        Spacer()
                        Text("6.3.3 (739)")
                    }
                    NavigationLink(
                        destination:
                            Text("Terms and Conditions")
                    ) {
                        Text("Terms and Conditions")
                    }
                    NavigationLink(
                        destination:
                            Text("Help")
                    ) {
                        Text("Help")
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Text("Settings")
                        .bold()
                        .padding(.trailing, 280.0)
                    Spacer()
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Done")
                    })
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
