//
//  Settings.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 26.08.2021.
//

import SwiftUI

struct Weather: View {
    @Environment(\.presentationMode) var presentationMode
    
    init() {
        UIToolbar.appearance().barTintColor = UIColor.white
    }
    var body: some View {
        NavigationView {
            VStack {
                Section {
                    VStack(alignment: .leading, spacing: 20.0) {
                        VStack(alignment: .leading) {
                            Text("Next 7 Days")
                                .font(.body)
                                .fontWeight(.semibold)
                            Spacer(minLength: 5)
                            Text("Light rain throughout the week, with high temperatures bottoming out at 74F on Saturday.")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .italic()
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding(.vertical)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("THU")
                                HStack {
                                    Image(systemName: "drop")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                    Text("89%")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                }
                            }
                            Image(systemName: "cloud.drizzle")
                                .font(.title)
                            HStack {
                                Text("74°")
                                Capsule()
                                    .fill()
                                    .foregroundColor(.gray)
                                    .padding(4)
                                Text("86°")
                            }
                            .padding(.horizontal)
                        } // HERE ENDS first weather line
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("FRI")
                                HStack {
                                    Image(systemName: "drop")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                    Text("37%")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                }
                            }
                            Image(systemName: "cloud.sun")
                                .font(.title)
                            HStack {
                                Text("71°")
                                Capsule()
                                    .fill()
                                    .foregroundColor(.gray)
                                    .padding(4)
                                
                                Text("85°")
                            }
                            .padding(.horizontal)
                        } // HERE ENDS second weather line
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("SAT")
                                HStack {
                                    Image(systemName: "drop")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                    Text("18%")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                }
                            }
                            Image(systemName: "cloud.sun")
                                .font(.title)
                            HStack {
                                Text("68°")
                                Capsule()
                                    .fill()
                                    .foregroundColor(.gray)
                                    .padding(4)
                                Text("74°")
                            }
                            .padding(.horizontal)
                        } // HERE ENDS third weather line
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("SUN")
                                HStack {
                                    Image(systemName: "drop")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                    Text("26%")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                }
                            }
                            Image(systemName: "cloud.sun")
                                .font(.title)
                            HStack {
                                Text("69°")
                                Capsule()
                                    .fill()
                                    .foregroundColor(.gray)
                                    .padding(4)
                                
                                Text("77°")
                            }
                            .padding(.horizontal)
                        } // HERE ENDS fourth weather line
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("MON")
                                HStack {
                                    Image(systemName: "drop")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                    Text("6%")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                }
                            }
                            Image(systemName: "sun.max")
                                .font(.title)
                            HStack {
                                Text("70°")
                                Capsule()
                                    .fill()
                                    .foregroundColor(.gray)
                                    .padding(4)
                                
                                Text("79°")
                            }
                            .padding(.horizontal)
                        } // HERE ENDS fifth weather line
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("TUE")
                                HStack {
                                    Image(systemName: "drop")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                    Text("13%")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                }
                            }
                            Image(systemName: "cloud.sun")
                                .font(.title)
                            HStack {
                                Text("72°")
                                Capsule()
                                    .fill()
                                    .foregroundColor(.gray)
                                    .padding(4)
                                
                                Text("81°")
                            }
                            .padding(.horizontal)
                        } // HERE ENDS sixth weather line
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("WED")
                                HStack {
                                    Image(systemName: "drop")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                    Text("61%")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                }
                            }
                            Image(systemName: "cloud.drizzle")
                                .font(.title)
                            HStack {
                                Text("72°")
                                Capsule()
                                    .fill()
                                    .foregroundColor(.gray)
                                    .padding(4)
                                Text("88°")
                            }
                            .padding(.horizontal)
                        } // HERE ENDS seventh weather line
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("THU")
                                HStack {
                                    Image(systemName: "drop")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                    Text("92%")
                                        .foregroundColor(.blue)
                                        .font(.caption2)
                                }
                            }
                            Image(systemName: "cloud.drizzle")
                                .font(.title)
                            HStack {
                                Text("75°")
                                Capsule()
                                    .fill()
                                    .foregroundColor(.gray)
                                    .padding(4)
                                Text("87°")
                            }
                            .padding(.horizontal)
                        } // HERE ENDS eighth weather line
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Image(systemName: "magnifyingglass.circle")
                            .font(.title2)
                        Text("Cambridge, MA")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 190.0)
                            
                        NavigationLink(destination:
                                        Settings()) {
                            Image(systemName: "gearshape")
                            .font(.title3)
                        }
                    }
                }
                VStack(alignment: .center, spacing: 6.0) {
                    Text("Explore weather in the past or future.")
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("TIME MACHINE")
                            .foregroundColor(.blue)
                            .fontWeight(.semibold)
                    })
                }
                .padding([.top, .bottom])
                Spacer()
            }
            .padding()
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    HStack(alignment: .bottom) {
                        VStack {
                            Image(systemName: "bolt.circle")
                                .font(.title2)
                            Text("Forecast")
                                .font(.subheadline)
                        }
                        .padding()
                        VStack {
                            Image(systemName: "globe")
                                .font(.title2)
                            Text("Map")
                                .font(.subheadline)
                        }
                        .padding()
                        
                        VStack {
                            
                            Image(systemName: "exclamationmark.icloud")
                                .font(.title2)
                            Text("Notifications")
                                .font(.subheadline)
                        }
                        .padding()
                        
                        VStack {
                            
                            Image(systemName: "envelope.open")
                                .font(.title2)
                            Text("Report")
                                .font(.subheadline)
                            
                        }
                        .padding()
                    }
                }
            }
            Spacer()
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct Weather_Previews: PreviewProvider {
    static var previews: some View {
        Weather()
    }
}

