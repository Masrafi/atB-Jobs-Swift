//
//  NavBarMore.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 11/6/24.
//

import SwiftUI

struct NavBarMore: View {
    @State var showingPopup = false

    var body: some View {
        ScrollView{
            VStack{
                NavigationLink(destination: ProfileViewDetails().navigationBarBackButtonHidden(true)) {
                    HStack{
                        Image("view_profile").resizable().frame(width: 30,height: 30).cornerRadius(15)
                        Text("View Profile").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                        Spacer()
                        Image(systemName: "chevron.forward").foregroundColor(Color(AppColors.blackColor))
                    }
                }
                Divider().padding([.top,.bottom],10)
                
                NavigationLink(destination: Contact().navigationBarBackButtonHidden(true)) {
                    HStack{
                        Image("contact_us").resizable().frame(width: 30,height: 30).cornerRadius(15)
                        Text("Contact Us").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                        Spacer()
                        Image(systemName: "chevron.forward").foregroundColor(Color(AppColors.blackColor))
                    }
                }
                Divider().padding([.top,.bottom],10)
                NavigationLink(destination: About().navigationBarBackButtonHidden(true)) {
                    HStack{
                        Image("about").resizable().frame(width: 30,height: 30).cornerRadius(15)
                        Text("About atB Jobs").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                        Spacer()
                        Image(systemName: "chevron.forward").foregroundColor(Color(AppColors.blackColor))
                    }
                }
                Divider().padding([.top,.bottom],10)
                Button(action: {
                    openURLPolicy()
                }) {
                    HStack{
                        Image("privacy_policy").resizable().frame(width: 30,height: 30).cornerRadius(15)
                        Text("Privacy & Policy").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                        Spacer()
                        Image(systemName: "chevron.forward").foregroundColor(Color(AppColors.blackColor))
                    }
                }
                Divider().padding([.top,.bottom],10)
                Button(action: {
                    openURLTerms()
                }) {
                    HStack{
                        Image("privacy_policy").resizable().frame(width: 30,height: 30).cornerRadius(15)
                        Text("Terms & Conditions").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                        Spacer()
                        Image(systemName: "chevron.forward").foregroundColor(Color(AppColors.blackColor))
                    }
                }
                Divider().padding([.top,.bottom],10)
                
                NavigationLink(destination: AccountSettings().navigationBarBackButtonHidden(true)) {
                    HStack{
                        Image("account_settings").resizable().frame(width: 30,height: 30).cornerRadius(15)
                        Text("Account Settings").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                        Spacer()
                        Image(systemName: "chevron.forward").foregroundColor(Color(AppColors.blackColor))
                    }
                }
                Divider().padding([.top,.bottom],10)
                NavigationLink(destination: Login().navigationBarBackButtonHidden(true)) {
                    HStack{
                        Image(systemName: "person.crop.circle").resizable().frame(width: 30,height: 30).cornerRadius(15).foregroundColor(Color(AppColors.secondaryText))
                        Text("Log in").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                        Spacer()
                        Image(systemName: "chevron.forward").foregroundColor(Color(AppColors.blackColor))
                    }
                }
                Divider().padding([.top,.bottom],10)
                
                Button(action: {
                    showingPopup = true
                }) {
                    HStack{
                        Image("logout").resizable().frame(width: 30,height: 30).cornerRadius(15)
                        Text("Log Out").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                        Spacer()
                        Image(systemName: "chevron.forward").foregroundColor(Color(AppColors.blackColor))
                    }
                    
                }.alert(isPresented: $showingPopup){
                    Alert(title: Text("Log out"), message: Text("Are you sue?"), primaryButton: .destructive(Text("Yes")){
                        print("Log out successfully")
                    },
                          secondaryButton: .cancel()
                    
                    
                    )
                }
                Divider().padding([.top,.bottom],10)
                
                
                
                
                
                
                Spacer()
            }.padding()
        }
    }
    func openURLPolicy() {
            if let url = URL(string: "https://atbjobs.s3.ap-southeast-1.amazonaws.com/mobile/privacy.html") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    func openURLTerms() {
            if let url = URL(string: "https://atbjobs.s3.ap-southeast-1.amazonaws.com/mobile/terms.html") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
}

#Preview {
    NavBarMore()
}
