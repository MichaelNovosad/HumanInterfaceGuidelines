//
//  NavigationBars.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 03.09.2021.
//

import SwiftUI

struct Mailboxes: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Group {
            List {
                NavigationLink(
                    destination:
                    VStack(alignment: .leading) {
                        Text("John Appleseed")
                            .font(.body)
                            .fontWeight(.bold)
                        Text("Katie Abeles")
                            .font(.headline)
                            .fontWeight(.medium)
                        Text("John, Here's a flyer for a very interesting modern art exhibit happening soon! We should...")
                            .font(.headline)
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text("John Appleseed")
                                .font(.body)
                                .fontWeight(.bold)
                            Text("Katie Abeles")
                                .font(.headline)
                                .fontWeight(.medium)
                            Text("John, Here's a flyer for a very interesting modern art exhibit happening soon! We should...")
                                .font(.subheadline)
                                .fontWeight(.regular)
                                .foregroundColor(Color.gray)
                        }
                    })
                NavigationLink(
                    destination:
                    VStack(alignment: .leading) {
                        Text("John Appleseed")
                            .font(.body)
                            .fontWeight(.bold)
                        Text("Housewarming Party")
                            .font(.headline)
                            .fontWeight(.medium)
                        Text("Jane, We've moved into our apartment... and it has a rooftop deck. Come by!")
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text("John Appleseed")
                                .font(.body)
                                .fontWeight(.bold)
                            Text("Housewarming Party")
                                .font(.headline)
                                .fontWeight(.medium)
                            Text("Jane, We've moved into our apartment... and it has a rooftop deck. Come by!")
                                .font(.subheadline)
                                .fontWeight(.regular)
                                .foregroundColor(Color.gray)
                        }
                    })
                NavigationLink(
                    destination:
                    VStack(alignment: .leading) {
                        Text("John Appleseed")
                            .font(.body)
                            .fontWeight(.bold)
                        Text("Lunch this Thursday?")
                            .font(.headline)
                            .fontWeight(.medium)
                        Text("Hello Dave, How about lunch this coming Thursday? John")
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text("John Appleseed")
                                .font(.body)
                                .fontWeight(.bold)
                            Text("Lunch this Thursday?")
                                .font(.headline)
                                .fontWeight(.medium)
                            Text("Hello Dave, How about lunch this coming Thursday? John")
                                .font(.subheadline)
                                .fontWeight(.regular)
                                .foregroundColor(Color.gray)
                        }
                    })
            }
        }
        .navigationBarTitle(Text("Inbox"))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .font(.title)
                .foregroundColor(Color.blue)
                .padding(.trailing, -6.0)
            Text("Mailboxes")
        }
        .font(.body)
        .foregroundColor(Color.blue), trailing: Text("Edit")
            .font(.body)
            .foregroundColor(Color.blue))
    }
}

struct Mailboxes_Previews: PreviewProvider {
    static var previews: some View {
        Mailboxes()
    }
}
