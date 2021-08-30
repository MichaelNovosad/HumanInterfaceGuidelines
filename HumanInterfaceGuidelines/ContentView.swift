//
//  ContentView.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 25.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination:
                                Weather()
                ) {
                    Text("Weather")
                }
                NavigationLink(destination:
                                DataEntry()
                ) {
                    Text("Data Entry")
                }
                NavigationLink(destination:
                                Ringtone()
                ) {
                    Text("Ringtone")
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
