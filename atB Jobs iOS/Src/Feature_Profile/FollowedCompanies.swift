//
//  FollowedCompanies.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 2/6/24.
//

import SwiftUI

struct FollowedCompanies: View {
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
                Text("Applied ")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                    .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 100) // Center align text
                Spacer()
            }.padding().frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        ScrollView{
            VStack{
                
                
                
                ForEach(0 ..< 4) { _ in
                    Applied()
                }
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    FollowedCompanies()
}

struct Applied: View {
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                Image("job_image").padding().font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 80,height: 80).background(AppColors.whiteColor).shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0).cornerRadius(50)
                
                
                VStack{
                    Text("HANSA Management Ltd.").foregroundColor(Color(AppColors.blackColor)).font(.system(size: 16)).fontWeight(.bold)
                    Image("icLocation").padding().font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 35,height: 35).background(AppColors.whiteColor).cornerRadius(8).padding(.trailing,170)
                }
                Spacer()
                
            }
            
            Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 0, bottom: 5, trailing: 0))
            
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Spacer()
                        Text("Unfollow").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText)).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:1))
                        Spacer()
                        NavigationLink(destination: Profile().navigationBarBackButtonHidden(true) ) {
                            Text("View Profile").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.whiteColor)).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).background(AppColors.secondaryText).cornerRadius(10)
                        }
                        Spacer()
                    }
                }
                Spacer()
            }
            Spacer()
            
        }.padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 5))
            .frame(maxWidth: .infinity, maxHeight: 180)
            .background(Color(AppColors.whiteColor))          // Set background color to blue
            .cornerRadius(15).shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0).padding([.leading, .trailing], 15).padding(.top, 10)
    }
}
