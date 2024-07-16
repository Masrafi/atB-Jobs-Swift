//
//  Profile.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 12/6/24.
//

import SwiftUI

struct Profile: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView{
            VStack{
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrowshape.backward.fill")
                            .foregroundColor(Color(AppColors.whiteColor))
                        
                    }
                    Spacer()
                    // }
                    Text("Apply Job")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(AppColors.whiteColor))
                    Spacer()
                }.padding()
                    .frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
                
                ZStack{
                    
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                150)
                    HStack{
                        Image("masrafi").resizable().font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).padding().frame(width: 80,height: 80, alignment: .leading).background(AppColors.whiteColor).cornerRadius(50)
                        VStack(alignment: .leading){
                            Text("atB Jobs Bangladesh").padding(5).font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).background(Color(AppColors.whiteColor)).cornerRadius(20)
                            HStack{
                                Image(systemName: "plus.circle").foregroundColor(Color(AppColors.whiteColor))
                                Text("Follow").foregroundColor(Color(AppColors.whiteColor))
                            }.padding(EdgeInsets(NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))).background(
                                RoundedRectangle(
                                    cornerRadius: 20,
                                    style: .continuous
                                ).fill(Color(AppColors.secondaryText)))
                        }
                        Spacer()
                    }.padding()
                    
                }
                
                
                HStack{
                    Text("Basic Details").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.leading, 10)
                    Text("Profile Summary").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                    Text("Education").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                    Text("Key Skills").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                }.frame(maxWidth: .infinity, maxHeight: 100).padding([.top, .bottom], 15)                      .background(Color(AppColors.whiteColor)).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                
                
                
                VStack(alignment: .leading){
                    Title(title: "Basic Details")
                    BasicDetails(txt1: "Experience", tst2: "10 Years", img:"desktopcomputer").padding(.bottom,5)
                    BasicDetails(txt1: "Salary", tst2: "15,00000 ", img:"desktopcomputer").padding(.bottom,5)
                    
                    BasicDetails(txt1: "Contact Number", tst2: "01650234138", img:"desktopcomputer").padding(.bottom,5)
                    
                    BasicDetails(txt1: "01650234138 ", tst2: "masrafrianam@gmail.com", img:"desktopcomputer").padding(.bottom,5)
                    BasicDetails(txt1: "Location ", tst2: "Road 18 , Bonani, Dhaka.", img:"desktopcomputer").padding(.bottom,5)
                    Divider()
                    
                    HStack{
                        Spacer()
                        HStack {
                            Text("Visit Website").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText))
                            Image("visit").resizable().frame(width: 15,height: 15)
                        }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(AppColors.secondaryText), lineWidth: 0.5)).padding(10)
                        Spacer()
                    }
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                
                VStack(alignment: .leading){
                    Title(title: "Company Overview")
                   
                    Text("Join atB Jobs, a Japanese start up with a mission to be the No.1 Job Portal in Bangladesh.")
                    
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                150)
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                
                VStack(alignment: .leading){
                    Title(title: "Meet The Team")
                    HStack{
                        HStack{
                            HStack{
                                Image("masrafi").resizable().font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 70,height: 70).background(AppColors.whiteColor).cornerRadius(50)
                            }.frame(width: 80,height: 80).background(Color(AppColors.whiteColor)).cornerRadius(79)
                        }.frame(width: 90,height: 90).background(Color(AppColors.unFocusColor.opacity(0.2))).cornerRadius(79).padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 5))
                        VStack(alignment: .leading){
                            Text("Shunki Sugaya").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.bottom,2)
                            Text("chief executive officer (CEO)").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,2)
                            Text("CEO atB Jobs  I Global entrepreneur I (Japan & Bangladesh) I Recruitment service I Head hunting business I").font(.system(size: 10))
                        }
                        
                    }
                    
                    
                    HStack{
                        HStack{
                            HStack{
                                Image("masrafi").resizable().font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 70,height: 70).background(AppColors.whiteColor).cornerRadius(50)
                            }.frame(width: 80,height: 80).background(Color(AppColors.whiteColor)).cornerRadius(79)
                        }.frame(width: 90,height: 90).background(Color(AppColors.unFocusColor.opacity(0.2))).cornerRadius(79).padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 5))
                        VStack(alignment: .leading){
                            Text("Shunki Sugaya").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.bottom,2)
                            Text("chief executive officer (CEO)").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.bottom,2)
                            Text("CEO atB Jobs  I Global entrepreneur I (Japan & Bangladesh) I Recruitment service I Head hunting business I").font(.system(size: 10))
                        }
                    }
                    Spacer()
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "What We Do?")
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Text("We have been working with Japanese companies in Bangladesh since 2019 on offshore development projects. Derived from our own challenges at recruitment, we started atB Jobs at 2022 based on hundreds of interviews conducted with users and HR managers. We want to create a global standard job matching website, where the current challenges of job seekers and recruiters will be resolved.")
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                
                VStack(alignment: .leading){
                    Title(title: "Why We do?")
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Text("Our Vision is to redefine the recruitment industry, not only for Bangladesh, but for the entire world.In an ever changing job market, the highest priority should always be accurate matchmaking between Job Seekers and Recruiters.The vision is to create a platform where anyone can have access to opportunity, best fitted to his potential.")
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "How We do?")
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Text("At atB Jobs, we believe in transparency, collaboration, and agility. We, encouraging open communication and knowledge sharing across all levels. Our team is composed of highly skilled and passionate individuals who are experts in their respective fields. We use a flexible and iterative approach to development, working closely with clients to understand their needs and deliver solutions that exceed expectations. We leverage the latest technologies and methodologies to ensure our work is efficient, effective, and of the highest quality.  Our commitment to continuous improvement(Kaizen) drives us to constantly learn and evolve. We actively seek feedback from clients and team members to identify areas for improvement and ensure we are always delivering the best possible service. Our office in Dhaka,Bangladesh provides top-tier best in class support around the clock.")
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Our Culture!")
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Join with us!")
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Text("With a Top Management composed only of Japanese members as of now, we truly follow the Bottom-Up approach, the focus being on creating future leaders and top managements - not just employees.")
                    
                    VStack{
                        HStack{
                            Image(systemName:"desktopcomputer").font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 35,height: 35).background(AppColors.secondaryText.opacity(0.2)).cornerRadius(20)
                            Text("Senior Front-end Engineer").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText))
                        }
                        Button(action: {
                                        openURL()
                        }) {
                            Text("View Details").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(AppColors.secondaryText), lineWidth: 0.5)).padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        }

                    }.padding().frame(maxWidth: .infinity, maxHeight: 200).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(AppColors.secondaryText), lineWidth: 0.5)).padding(10)
                    
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight:
                                200)
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                
                
                VStack(alignment: .center){
                    Text("Connect with atB Jobs").font(.system(size: 18)).fontWeight(.bold)
                    
                    HStack{
                        Image("linkedin")
                        Image("linkedin")
                        Image("linkedin")
                        Image("linkedin")
                        Image("linkedin")
                        
                    }
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    HStack{
                        VStack{
                            Text("Love jobs by atB Jobs?")
                            Text("Register with us and let company recruiters find you.")
                        }
                        Image("loveJob").resizable().foregroundColor(Color(AppColors.appBarColor)).frame(width: 100,height: 100).clipShape(Circle()).background(AppColors.whiteColor)//.cornerRadius(30)
                    }
                    
                    Text("Register Now").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.whiteColor)).frame(width: 160,height: 50).background(AppColors.secondaryText).cornerRadius(10)
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                //Spacer()
            }
        }
    }
    func openURL() {
            if let url = URL(string: "https://atb-jobs.com/") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
}

#Preview {
    Profile()
}
