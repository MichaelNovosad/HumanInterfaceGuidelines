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
                                Onboarding()
                ) {
                    Text("Onboarding")
                }
                NavigationLink(destination:
                                Modality()
                ) {
                    Text("Modality")
                }
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
                NavigationLink(destination:
                                Mailboxes()
                ) {
                    Text("Mailboxes")
                }
                NavigationLink(destination:
                                Recents()
                ) {
                    Text("Recents")
                }
                NavigationLink(destination:
                                Notes()
                ) {
                    Text("Notes")
                }
                NavigationLink(destination:
                                IntroducingBedtime()
                ) {
                    Text("IntroducingBedtime")
                }
                NavigationLink(destination:
                                Favorites()
                ) {
                    Text("Favorites")
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
