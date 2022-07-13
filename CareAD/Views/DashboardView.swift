//
//  DashboardView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/5/22.
//

import SwiftUI

struct DashboardView: View {
    
    var body: some View {
        
        NavigationView {
            VStack {
                    HStack {
                        Text("Your Name")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(Color("purp"))
                        
                        Spacer()
                            .frame(width: 130)
                        
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(Color.black)
                        }
                    }
                    .padding()
                    .offset(y: -100)
                
                    VStack {
                        ProfilePicView()
                    }
                    .offset(y:-60)
                    
                    
                    Spacer()

                    VStack {
                        HStack {
                            VStack {
                                NavigationLink(destination: ADLView()){
                                    ZStack {
                                        Text("ADL")
                                            .frame(width: 125, height: 200)
                                            .foregroundColor(.white)
                                            .background(Color("purp"))
                                            .font(.system(size: 28, weight: .bold))
                                            .cornerRadius(20)
                                        
                                        Image(systemName: "square.and.pencil")
                                            .foregroundColor(.white)
                                            
                                            .offset(y: 30)
                                    }
                                }
                            }

                    

                            VStack {
                                NavigationLink(destination: ResourcesView())
                                {
                                    Text("Meds")
                                        .frame(width: 125, height: 200)
                                        .foregroundColor(.white)
                                        .background(.gray)
                                        .font(.system(size: 28, weight: .bold))
                                        .cornerRadius(20)

                                }
                            }

                    

                            VStack {
                                NavigationLink(destination: ResourcesView())
                                {
                                    Text("Appt")
                                        .frame(width: 125, height: 200)
                                        .foregroundColor(.white)
                                        .background(.gray)
                                        .font(.system(size: 28, weight: .bold))
                                        .cornerRadius(20)

                                }
                            }
                        }

                    
                    HStack {
                        VStack {
                            NavigationLink(destination: ResourcesView())
                            {
                                Text("Vitals")
                                    .frame(width: 125, height: 200)
                                    .foregroundColor(.white)
                                    .background(.gray)
                                    .font(.system(size: 28, weight: .bold))
                                    .cornerRadius(20)
        
                            }
                        }

                    

                        VStack {
                            NavigationLink(destination: ResourcesView())
                            {
                                Text("Contacts")
                                    .frame(width: 125, height: 200)
                                    .foregroundColor(.white)
                                    .background(.gray)
                                    .font(.system(size: 28, weight: .bold))
                                    .cornerRadius(20)

                            }
                        }

                    
                        VStack {
                            NavigationLink(destination: ResourcesView())
                            {
                                Text("Resources")
                                    .frame(width: 125, height: 200)
                                    .foregroundColor(.white)
                                    .background(Color("purp"))
                                    .font(.system(size: 24, weight: .bold))
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .accentColor(.black)
        .padding()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
