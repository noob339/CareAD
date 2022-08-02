//
//  ResourcesView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/10/22.
//

import SwiftUI

struct ResourcesView: View {
    var body: some View {
        ScrollView
        {
            VStack
            {
                Text("Resources")
                    .foregroundColor(Color("purp"))
                    .font(.system(size: 45, weight: .bold, design: .rounded))
                Image("Icon-100")
                
                Spacer()
                    .frame(height: 50)

                Group
                {
                    Link(destination: URL(string:"https://www.alz.org/alzheimers-dementia/what-is-dementia")!, label: {
                        Text("What is Dementia?")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/alzheimers-dementia/what-is-alzheimers")!, label: {
                        Text("What is Alzheimer's")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://stanfordhealthcare.org/medical-conditions/brain-and-nerves/dementia/prevention.html")!, label: {
                        Text("Dementia Prevention")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.ncbi.nlm.nih.gov/books/NBK470404/")!, label: {
                        Text("What is ADL(Activities of daily living)")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.ncbi.nlm.nih.gov/books/NBK470404/")!, label: {
                        Text("What is ADL(Activities of daily living)")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://my.clevelandclinic.org/health/articles/9589-alzheimers-disease-assisting-your-loved-one-with-activities-of-daily-living")!, label: {
                        Text("Helping Alzheimer's disease Patients")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.helpguide.org/articles/alzheimers-dementia-aging/tips-for-alzheimers-caregivers.html")!, label: {
                        Text("How to Cope with patients of AD")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                }
                
                Group
                {
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/stages-behaviors/agression-anger")!, label: {
                        Text("Coping with Aggressive Patients")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/caregiver-health")!, label: {
                        Text("Caregiver health Resources")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/stages-behaviors/early-stage")!, label: {
                        Text("Early stage Caregiving")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/stages-behaviors/middle-stage")!, label: {
                        Text("Mid Stage Caregiving")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/stages-behaviors/late-stage")!, label: {
                        Text("Late Stage Caregiving")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/stages-behaviors")!, label: {
                        Text("Other Patient Behaviors")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                }
                
                Group
                {
                    
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/care-options")!, label: {
                        Text("Care Options")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/safety")!, label: {
                        Text("Safety")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/events/event_search?etid=2&cid=0")!, label: {
                        Text("Support groups for Caregivers and Patients")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/daily-care")!, label: {
                        Text("Daily Care")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                    
                    Link(destination: URL(string:"https://www.alz.org/help-support/caregiving/financial-legal-planning")!, label: {
                        Text("Financial and Legal Planning For Caregivers")
                            .bold()
                            .frame(width: 400, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color("purp"))
                    })
                }
            }
        }
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
