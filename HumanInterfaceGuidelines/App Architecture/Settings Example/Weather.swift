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
                            Text("Light rain throughout the week, with high temperatures bottoming out at 74F on Saturday.")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .italic()
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        Group {
                        HStack {
                                VStack(alignment: .leading) {
                                    Text("THU")
                                        .bold()
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                        Text("89%")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                            .bold()
                                    }
                                }
                                Image(systemName: "cloud.drizzle")
                                    .font(.title)
                                HStack {
                                    Text("74°")
                                    Capsule()
                                        .fill()
                                        .foregroundColor(.gray)
                                        .padding(10)
                                    Text("86°")
                                }
                                .padding(.horizontal)
                            } // HERE ENDS first weather line
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("FRI")
                                        .bold()
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                        Text("37%")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                            .bold()
                                    }
                                }
                                Image(systemName: "cloud.sun")
                                    .font(.title)
                                HStack {
                                    Text("71°")
                                    Capsule()
                                        .fill()
                                        .foregroundColor(.gray)
                                        .padding(10)
                                    Text("85°")
                                }
                                .padding(.horizontal)
                            } // HERE ENDS second weather line
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("SAT")
                                        .bold()
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                        Text("18%")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                            .bold()
                                    }
                                }
                                Image(systemName: "cloud.sun")
                                    .font(.title)
                                HStack {
                                    Text("68°")
                                    Capsule()
                                        .fill()
                                        .foregroundColor(.gray)
                                        .padding(10)
                                    Text("74°")
                                }
                                .padding(.horizontal)
                            } // HERE ENDS third weather line
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("SUN")
                                        .bold()
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                        Text("26%")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                            .bold()
                                    }
                                }
                                Image(systemName: "cloud.sun")
                                    .font(.title)
                                HStack {
                                    Text("69°")
                                    Capsule()
                                        .fill()
                                        .foregroundColor(.gray)
                                        .padding(10)
                                    Text("77°")
                                }
                                .padding(.horizontal)
                            } // HERE ENDS fourth weather line
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("MON")
                                        .bold()
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                        Text("6%")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                            .bold()
                                    }
                                }
                                Image(systemName: "sun.max")
                                    .font(.title)
                                HStack {
                                    Text("70°")
                                    Capsule()
                                        .fill()
                                        .foregroundColor(.gray)
                                        .padding(10)
                                    
                                    Text("79°")
                                }
                                .padding(.horizontal)
                            } // HERE ENDS fifth weather line
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("TUE")
                                        .bold()
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                        Text("13%")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                            .bold()

                                    }
                                }
                                Image(systemName: "cloud.sun")
                                    .font(.title)
                                HStack {
                                    Text("72°")
                                    Capsule()
                                        .fill()
                                        .foregroundColor(.gray)
                                        .padding(10)
                                    
                                    Text("81°")
                                }
                                .padding(.horizontal)
                            } // HERE ENDS sixth weather line
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("WED")
                                        .bold()
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                        Text("61%")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                            .bold()

                                    }
                                }
                                Image(systemName: "cloud.drizzle")
                                    .font(.title)
                                HStack {
                                    Text("72°")
                                    Capsule()
                                        .fill()
                                        .foregroundColor(.gray)
                                        .padding(10)
                                    Text("88°")
                                }
                                .padding(.horizontal)
                            } // HERE ENDS seventh weather line
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("THU")
                                        .bold()
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                        Text("92%")
                                            .foregroundColor(.blue)
                                            .font(.caption2)
                                            .bold()
                                    }
                                }
                                Image(systemName: "cloud.drizzle")
                                    .font(.title)
                                HStack {
                                    Text("75°")
                                    Capsule()
                                        .fill()
                                        .foregroundColor(.gray)
                                        .padding(10)
                                    Text("87°")
                                }
                                .padding(.horizontal)
                            } // HERE ENDS eighth weather line
                        }
                        .frame(width: 400, height: 50)
                        .ignoresSafeArea()
                        
                        
                        
                        
                        
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
                ToolbarItemGroup(placement: .bottomBar) {
                    HStack(alignment: .bottom) {
                        VStack {
                            Image(systemName: "bolt.circle")
                                .font(.title2)
                            Text("Forecast")
                                .font(.subheadline)
                        }
                        .foregroundColor(.blue)
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
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Weather_Previews: PreviewProvider {
    static var previews: some View {
        Weather()
    }
}

