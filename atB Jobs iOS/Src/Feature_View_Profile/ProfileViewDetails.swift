//
//  ProfileView.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 8/6/24.
//

import SwiftUI

struct ProfileViewDetails: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack(alignment: .top){
            HStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "arrowshape.backward.fill")
                        .foregroundColor(Color(AppColors.whiteColor))
                    
                }
                // }
                Spacer()
                Text("Profile")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                    
                Spacer()
            }.padding()
                .frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        ScrollView{
            VStack{
               
                ProfilePicEdit()

                HStack{
                    
                    Text("Basic Details").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.leading, 10)
                    Text("Profile Summary").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                    Text("Education").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                    Text("Key Skills").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.leading, 10)
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: 100).padding([.top, .bottom], 15)                      .background(Color(AppColors.whiteColor)).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5).padding(.top, 30)
                
                
                VStack(alignment: .leading){
                    Title(title: "Basic Details")
                    
                    BasicDetails(txt1: "Experience", tst2: "10 Years", img:"desktopcomputer")
                    
                    BasicDetails(txt1: "Salary", tst2: "15,00000 ", img:"desktopcomputer")
                    
                    BasicDetails(txt1: "Contact Number", tst2: "01650234138", img:"desktopcomputer")
                    
                    BasicDetails(txt1: "01650234138 ", tst2: "masrafrianam@gmail.com", img:"desktopcomputer")
                    BasicDetails(txt1: "Location ", tst2: "Road 18 , Bonani, Dhaka.", img:"desktopcomputer")
                    Spacer()
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)

                
                
                VStack(alignment: .leading){
                    Title(title: "Profile Summary")
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                
                VStack(alignment: .leading){
                    Title(title: "Education")
                    Text("BS.c in Computer Science & Engineering").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.top, 10)
                    Text("The People's University of Bangladesh").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Passing Year : 2013 - 2016").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Grade: 3.66 Out Of 4.00").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Key Skills")
                    
                    Text("User Experience (UX)").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("4 Years").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Divider().padding([.top],10)
                    Text("Wireframing & Prototyping").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("4 Years").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Work Experience")
                    
                    Text("Mobile Application Engineer").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.top, 10)
                    Text("atB Lab").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                    Text("Oct 2020 - Continue").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Divider().padding([.top],10)

                    Text("Job Responsibilities").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.top, 10)
                    HStack(alignment: .top){
                        Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                        Text("Developing and conceptualizing a comprehensive UI/UX design strategy for the brand").font(.system(size: 14))
                    }
                    HStack(alignment: .top){
                        Image(systemName: "circle.fill").font(.system(size: 7)).frame(width:2,height: 2).padding(.top,8)
                        Text("Producing high-quality UX design solutions through wireframes, visual and graphic designs, flow diagrams, storyboards, site maps, and prototypes").font(.system(size: 14))
                    }
                    Divider().padding([.top],10)
                    Text("Area of expertise").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.top, 10)
                    
                    HStack{
                        Text("Area of expertise").padding(EdgeInsets(NSDirectionalEdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)))
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(AppColors.secondaryText), lineWidth: 0.5)
                        )
                        Text("Area of expertise").padding(EdgeInsets(NSDirectionalEdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)))
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(AppColors.secondaryText), lineWidth: 0.5)
                        )
                        
                    }
                    HStack{
                        Text("Area of expertise").padding(EdgeInsets(NSDirectionalEdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)))
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(AppColors.secondaryText), lineWidth: 0.5)
                        )
                        Text("Area of expertise").padding(EdgeInsets(NSDirectionalEdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)))
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(AppColors.secondaryText), lineWidth: 0.5)
                        )
                        
                    }
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Resume")
                    Text("Resume of Masrafi Anam").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.top, 10)
                    Text("Resume_of_Masrafi_Anam.pdf").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.top, 10)
                    
                    Text("Uploaded on Feb 18, 2024").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Projects")
                    Text("BS.c in Computer Science & Engineering").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.top, 10)
                    Text("TApr 2023 - Present").font(.system(size: 12)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                
                VStack(alignment: .leading){
                    Title(title: "Certifications")
                    
                    Text("Google UX Design Professional Certificate").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Duration: 6 Months, Year : 2022").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Institute: coursera.org").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Divider().padding([.top],10)
                    Text("Google UX Design Professional Certificate").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Duration: 6 Months, Year : 2022").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Institute: coursera.org").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Certifications")
                    
                    Text("English").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Bangla").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Career & Application Info")
                    
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                
                VStack(alignment: .leading){
                    Title(title: "Career & Application Info")
                    
                    Text("Father's Name: Anamullay").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Looking For: Top Level Job").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                
                VStack(alignment: .leading){
                    Title(title: "Certifications")
                    HStack{
                        Image("linkedin").resizable()
                            .frame(width:30,height: 30).padding(.top,10)
                        Text("LinkedIn").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    }
                    HStack{
                        Image("language").resizable()
                            .frame(width:30,height: 30).padding(.top,10)
                        Text("masrafianam.com").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    }
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "Hobbies & interest")
                    
                    Text("Reading Books").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Reading Motivational Book & Islamic Book").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    
                    Divider().padding([.top],10)
                    Text("Entrepreneurship & innovation").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("starting a small business, participating in startup communities").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    
                    
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                VStack(alignment: .leading){
                    Title(title: "References")
                    Text("Sugaya Shanki").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("Owner CEO   I   atB Jobs Bangladesh").font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(.top, 10)
                    Text("+880 191717 5657   ").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                    Text("sugayashkanki@atbjobs.com").font(.system(size: 14)).foregroundColor(Color(AppColors.blackColor)).padding(.top, 10)
                }.padding().frame(maxWidth: .infinity, maxHeight:.infinity).background(.white).padding().cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    ProfileViewDetails()
}

struct ProfilePicEdit: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                ZStack{
                    HStack{
                        HStack{
                            Image("masrafi").resizable().font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 80,height: 80).background(AppColors.whiteColor).cornerRadius(50)
                        }.frame(width: 100,height: 100).background(Color(AppColors.whiteColor)).cornerRadius(79)
                        
                    }.frame(width: 110,height: 110).background(Color(AppColors.indicatorColor)).cornerRadius(79).padding(EdgeInsets(top: 30, leading: 0, bottom: 10, trailing: 5))
                    Image(systemName: "camera").padding(.leading,100).padding(.bottom, 50)
                    Text("100%").font(.system(size: 14)).fontWeight(.bold
                    ).foregroundColor(Color(AppColors.appBarColor)).frame(width: 50,height: 25).background(AppColors.whiteColor).cornerRadius(20).shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0).padding(.top, 130)
                }
                VStack(alignment: .leading){
                    Text("Masrafi Anam").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.top,30)
                    Text("Mobile Application Engineer").font(.system(size: 14)).fontWeight(.medium).foregroundColor(Color(AppColors.unFocusColor))
                    Text("Complete  Profile").font(.system(size: 12)).fontWeight(.bold
                    ).foregroundColor(Color(AppColors.appBarColor)).frame(width: 130,height: 30).background(AppColors.secondaryText.opacity(0.3)).cornerRadius(10)
                }
                Spacer()
                
            }.padding(.leading,15)
            
        }.frame(maxWidth: .infinity, maxHeight: 100)
            .background(Color(AppColors.whiteColor))
    }
}
struct BasicDetails: View {
    let txt1: String
    let tst2: String
    let img: String
    var body: some View {
        HStack{
            Image(systemName:img).font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 35,height: 35).background(AppColors.secondaryText.opacity(0.2)).cornerRadius(20)
            VStack(alignment: .leading
            ){
                Text(txt1).font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                Text(tst2).font(.system(size: 12)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText))
            }.padding(.leading,10)
        }
    }
}
struct Title: View {
    let title:String
    var body: some View {
        HStack{
            VStack{
                
            }.frame(width: 5,height: 25).background(Color(AppColors.secondaryText))
            Text(title).font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText))
            Spacer()
            
        }
        Divider().padding(.bottom,10)
    }
}
