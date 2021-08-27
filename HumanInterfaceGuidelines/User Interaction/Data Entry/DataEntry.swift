//
//  DataEntry.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 27.08.2021.
//

import SwiftUI

struct DataEntry: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var toggleIsOn = true
    @State private var date = Date()
    @State private var toggleIsOff = false
    @State private var pickerSelector = 1
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Get Groceries")
                }
                Section {
                HStack {
                    Toggle(isOn: $toggleIsOn) {
                        VStack(alignment: .leading) {
                            Text("Remind me on a day")
                        }
                    }
                }
                    HStack {
                        Text(date.addingTimeInterval(0), style: .date)
                        Text(date.addingTimeInterval(0), style: .time)
                    }
                    .foregroundColor(.blue)
                    DatePicker("", selection: $date)
                        .datePickerStyle(WheelDatePickerStyle())
                        .labelsHidden()
                    Picker(selection: .constant(1), label: Text("Repeat"), content: {
                        Text("Never").tag(1)
                        Text("Once").tag(2)
                    })
            }
                Section {
                    Toggle(isOn: $toggleIsOff) {
                        VStack(alignment: .leading) {
                            Text("Remind me at a location")
                        }
                    }
                }
                Section {
                    HStack {
                        Text("Priority")
                            .padding(.trailing, 80)
                        Picker(selection: $pickerSelector, label: Text("Picker"), content: {
                        Text("None").tag(1)
                        Text("!").tag(2)
                        Text("!!").tag(3)
                        Text("!!!").tag(4)
                    })
                    .pickerStyle(SegmentedPickerStyle())
                    }
                    Text("Notes")
                        .padding(.bottom, 50)
                }
                    
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Cancel")
                    })
                    Text("Create Reminder")
                        .bold()
                        .padding(.trailing, 83)
                        .padding(.leading, 70)
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Done")
                    })
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct DataEntry_Previews: PreviewProvider {
    static var previews: some View {
        DataEntry()
    }
}
