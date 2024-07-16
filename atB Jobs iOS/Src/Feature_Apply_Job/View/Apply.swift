//
//  Apply.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 11/6/24.
//

import SwiftUI

struct Apply: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var text: String = ""

    var body: some View {
        
        ZStack(alignment: .top){
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
    }
        ScrollView{
            VStack{
               
                
                VStack(alignment: .leading){
                    Text("Resume").font(.system(size: 18)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                    Text("Resume is the most important document recruiters look for. Recruiters generally do not look at profiles without resumes.").font(.system(size: 14)).padding(.top,5)
                }.padding().frame(maxWidth: .infinity, maxHeight: .infinity)                      .background(Color(AppColors.whiteColor)).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5).padding(.bottom,10)
                
                
                VStack(alignment: .leading){
                    Text("Select Resume").font(.system(size: 18)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                    
                    HStack {
                        // Prefix Icon
                        //Image("email").padding(.trailing,5)
                        
                        // TextField
                        TextField("Mobile application engineer", text: $text)
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.gray)
                    }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                }.padding()
                
                
                VStack{
                    
                    HStack{
                        Image("upload")
                        Text("Upload  Resume").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText))
                    }.padding(EdgeInsets(top: 15, leading: 30, bottom: 15, trailing: 30)).background(Color(AppColors.secondaryText.opacity(0.2))).cornerRadius(10)
                    Text("Supported Formats: doc, docx, rtf,").font(.system(size: 12)).padding(.top,2)
                    Text("pdf, upto 2 MB").font(.system(size: 12))
                }.padding().frame(maxWidth: .infinity, maxHeight: .infinity).overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.blue, lineWidth: 0.5)
                ).padding()
                
                VStack(alignment: .leading){
                    Text("Cover Letter").font(.system(size: 18)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                    
                    HStack {
                        TextField("Write application", text: $text)
                    }.padding(EdgeInsets(top: 15, leading: 15, bottom: 100, trailing: 15)).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                    
                    
                    
                    Text("Custom Questions").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top, 15).padding(.bottom,2)
                    Text("How soon are you available to start?").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                    HStack {
                        TextField("Write answer", text: $text)
                    }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                    
                    
                    HStack{
                        Spacer()
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Cancel").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.appBarColor)).padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30)).overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1))
                        }
                        
                        Spacer()
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Apply Now").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.whiteColor)).padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30)).background(AppColors.secondaryText).cornerRadius(10)
                        }
                        Spacer()
                    }.padding(.top,20)
                    
                }.padding()
                
                
            }
        }
    }
}

#Preview {
    Apply()
}

