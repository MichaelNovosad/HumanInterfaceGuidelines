//
//  Notes.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 03.09.2021.
//

import SwiftUI

struct Notes: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var textField = ""
    var body: some View {
            VStack {
                List {
        TextField(" ", text: $textField)
            }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(Color.orange)
                            .padding(.trailing, -6.0)
                        Text("Notes")
                            .foregroundColor(Color.orange)
                    }
                    .padding(.trailing, 160)
                    HStack {
                    Image(systemName: "person.crop.circle.badge.plus")
                        .padding(.trailing, 30)
                        .font(.title)
                    Image(systemName: "square.and.arrow.up")
                        .padding(.trailing, 5)
                        .font(.title)
                        Text("Done")
                            .fontWeight(.bold)
                            .padding(.leading, 10)
                        
                }
                    .foregroundColor(Color.orange)
                
            }
        }
            .navigationBarBackButtonHidden(true)
        
    }
}

struct Notes_Previews: PreviewProvider {
    static var previews: some View {
        Notes()
    }
}
