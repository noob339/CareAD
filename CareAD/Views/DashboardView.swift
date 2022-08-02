//
//  DashboardView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/5/22.
//

//need to create a profile that binds with the dashboard view which
//also fix the settings buton,  model, view and bind it
//create the quiz using swiftUI
//

import SwiftUI

struct DashboardView: View {
    @State private var adl = ADLSurvey.sampleData
    @State private var meds = Meds.sampleData
    @State private var appointments = Appointment.sampleData
    @State private var vitals = Vitals.sampleData
    @State private var contacts = Contacts.sampleData
   
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack{
                        Text("First Last")
                            .font(.system(size: 30, weight: .bold))
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
                                NavigationLink(destination: ADLView(ADL: $adl)){
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
                                            .font(.system(size: 24, weight: .bold))
                                    }
                                }
                            }

                    

                            VStack {
                                NavigationLink(destination: MedsMainView(meds: $meds))
                                {
                                    ZStack {
                                        Text("Meds")
                                            .frame(width: 125, height: 200)
                                            .foregroundColor(.white)
                                            .background(Color("purp"))
                                            .font(.system(size: 28, weight: .bold))
                                            .cornerRadius(20)
                                        Image(systemName: "pills.fill")
                                            .foregroundColor(.white)
                                            .offset(y: 30)
                                            .font(.system(size: 24, weight: .bold))
                                    }
                                }
                            }

                    

                            VStack {
                                NavigationLink(destination: AppointmentMainView(appointments: $appointments))
                                {
                                    ZStack {
                                        Text("Appt")
                                            .frame(width: 125, height: 200)
                                            .foregroundColor(.white)
                                            .background(Color("purp"))
                                            .font(.system(size: 28, weight: .bold))
                                            .cornerRadius(20)
                                        Image(systemName: "calendar")
                                            .foregroundColor(.white)
                                            .offset(y: 30)
                                            .font(.system(size: 24, weight: .bold))
                                    }
                                }
                            }
                        }
                        .padding()

                    
                    HStack {
                        VStack {
                            NavigationLink(destination: VitalsMainView(vitals: $vitals))
                            {
                                ZStack {
                                    Text("Vitals")
                                        .frame(width: 125, height: 200)
                                        .foregroundColor(.white)
                                        .background(Color("purp"))
                                        .font(.system(size: 28, weight: .bold))
                                        .cornerRadius(20)
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.white)
                                        .offset(y: 30)
                                        .font(.system(size: 24, weight: .bold))
            
                                }
                            }
                        }

                    

                        VStack {
                            NavigationLink(destination: ContactsMainView(contacts: $contacts))
                            {
                                ZStack {
                                    Text("Contacts")
                                        .frame(width: 125, height: 200)
                                        .foregroundColor(.white)
                                        .background(Color("purp"))
                                        .font(.system(size: 28, weight: .bold))
                                        .cornerRadius(20)
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.white)
                                        .offset(y: 30)
                                        .font(.system(size: 24, weight: .bold))
                                }
                            }
                        }

                    
                        VStack {
                            NavigationLink(destination: ResourcesView())
                            {
                                ZStack {
                                    Text("Resources")
                                        .frame(width: 125, height: 200)
                                        .foregroundColor(.white)
                                        .background(Color("purp"))
                                        .font(.system(size: 24, weight: .bold))
                                        .cornerRadius(20)
                                    Image(systemName: "book.circle")
                                        .foregroundColor(.white)
                                        .offset(y: 30)
                                        .font(.system(size: 24, weight: .bold))
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .accentColor(Color("purp"))
        .padding()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
