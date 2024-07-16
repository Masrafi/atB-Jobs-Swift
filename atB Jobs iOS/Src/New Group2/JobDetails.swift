//
//  JobDetails.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 9/6/24.
//

import SwiftUI

struct JobDetails: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack(alignment: .top){
            HStack {
                Spacer()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "arrowshape.backward.fill")
                        .foregroundColor(Color(AppColors.whiteColor))
                    
                }
                // }
                Text("Job Details ")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                    .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 100)
                Image("saved")
                Spacer()
            }.padding()
                .frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        ZStack(alignment: .bottom){
            ScrollView{
                VStack{
                    
                    
                    
                    VStack(alignment: .leading){
                        HStack{
                            NavigationLink(destination: Profile().navigationBarBackButtonHidden(true) ) {
                                Image("job_image")
                            }
                            Spacer()
                            Text("Vacancy 05").foregroundColor(Color(AppColors.secondaryText))
                        }.padding()
                        
                        Text("Google UX Design Professional Certificate").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading,15).padding(.bottom,5)
                        Text("Google UX Design Professional Certificate").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.leading, 15)
                        Divider().padding(.top,10)
                        HStack{
                            Image("job_busket")
                            Text("Job posted 3 Days Ago")
                            Spacer()
                            HStack{
                                Image(systemName: "plus.circle").foregroundColor(Color(AppColors.whiteColor))
                                Text("Follow").foregroundColor(Color(AppColors.whiteColor))
                            }.padding(EdgeInsets(NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))).background(
                                
                                RoundedRectangle(
                                    
                                    cornerRadius: 20,
                                    style: .continuous
                                ).fill(Color(AppColors.secondaryText))
                                //.stroke(.pink, lineWidth: 2)
                            )
                            
                        }.padding()
                    }.background(.white).shadow(color: Color.black.opacity(0.2), radius: 3, x: 5, y: 0)
                    
                    
                    
                    HStack{
                        Text("Basic Details").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.leading, 10)
                        Text("Profile Summary").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                        Text("Education").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                        Text("Key Skills").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                    }.frame(maxWidth: .infinity, maxHeight: 100).padding([.top, .bottom], 15)                      .background(Color(AppColors.whiteColor)).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    
                    VStack(alignment: .leading){
                        //Title(title: "Basic Details")
                        
                        BasicDetailsJob(txt1: "50000 - 80000 BDT", tst2: "50000 - 80000 BDT", img:"salary_range")
                        
                        BasicDetailsJob(txt1: "0-3 Years", tst2: "Experience ", img:"recommend_job")
                        
                        BasicDetailsJob(txt1: "Bachelor", tst2: "Education", img:"degree")
                        
                        BasicDetailsJob(txt1: "Gulshan-1, Dhaka. ", tst2: "Location", img:"location")
                        
                        Spacer()
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                    
                    
                    VStack(alignment: .leading){
                        Text("Job Description").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,10)
                        
                        Text("The HR and Admin Officer is responsible for overall administration and HR activities and requires to provide strategic assistance to all aspects of the Admin and HR to ensure maximum achievement of Desh TV`s objectives within the framework of organizational principles and policies.").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor))
                        
                        Spacer()
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                    
                    
                    VStack(alignment: .leading){
                        Text("Job Requirements").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,10)
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("Oversee daily operations of the HR department;").font(.system(size: 14))
                        }
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("Implement effective sourcing, screening and interviewing techniques").font(.system(size: 14))
                        }
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("Responsible for overall organizational hiring").font(.system(size: 14))
                        }
                        
                        Spacer()
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .leading).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                    
                    VStack(alignment: .leading){
                        Text("Educational Requirements").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,10)
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("BBA/MBA in HRM or Masters in any discipline from any reputed institute.").font(.system(size: 14))
                        }
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("PGDHRM will be given preference.").font(.system(size: 14))
                        }
                        
                        Spacer()
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .leading).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                    
                    
                    VStack(alignment: .leading){
                        Text("Experience Requirements").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,10)
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("At most 3 year(s)").font(.system(size: 14))
                        }
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("Freshers are also encouraged to apply.").font(.system(size: 14))
                        }
                        
                        Spacer()
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .leading).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                    
                    
                    
                    VStack(alignment: .leading){
                        Text("Additional Requirements").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,10)
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("Age 22 to 30 years").font(.system(size: 14))
                        }
                        
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("Both males and females are allowed to apply").font(.system(size: 14))
                        }
                        HStack(alignment: .top){
                            Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                            Text("Positive and proactive attitude toward any assigned task").font(.system(size: 14))
                        }
                        
                        Spacer()
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .leading).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                    
                    
                    
                    VStack(alignment: .leading){
                        Text("About Company").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,10)
                        Text("Google LLC is an American multinational corporation and technology company focusing on online advertising, search engine technology, cloud computing, computer software, quantum computing, e-commerce, consumer electronics, and artificial intelligence.").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor))
                        
                        
                        Spacer()
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .leading).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                    
                    
                    VStack(alignment: .leading){
                        Text("Benefits").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,10)
                        Text("Google LLC is an American multinational corporation and technology company focusing on online advertising, search engine technology, cloud computing, computer software, quantum computing, e-commerce, consumer electronics, and artificial intelligence.").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor))
                        
                        
                        Spacer()
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .leading).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                    
                    Spacer()
                }.padding(.bottom, 100)
            }
            HStack {
                NavigationLink(destination: SimilarJobs().navigationBarBackButtonHidden(true) ) {
                    Image("similar").resizable().frame(width: 40,height: 40)
                    Text("Similar Jobs").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText))
                }
                            
                            Spacer()
                NavigationLink(destination: Apply().navigationBarBackButtonHidden(true)) {
                    Text("Apply Now").padding().font(.system(size: 16)).fontWeight(.bold)
                        .background(Color(AppColors.secondaryText))
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                            
            }.padding().background(.white)
                        
            
        }
    }
}

#Preview {
    JobDetails()
}


struct BasicDetailsJob: View {
    let txt1: String
    let tst2: String
    let img: String
    var body: some View {
        HStack{
            VStack{
                Image(img).resizable().frame(width: 15,height: 15)
            }.frame(width: 30,height: 30).background(AppColors.secondaryText.opacity(0.2)).cornerRadius(20)
            VStack(alignment: .leading
            ){
                Text(txt1).font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                Text(tst2).font(.system(size: 10)).foregroundColor(Color(AppColors.blackColor))
            }.padding(.leading,10)
            Spacer()
        }
    }
}
