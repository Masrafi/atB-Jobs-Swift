//
//  Register.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 11/6/24.
//

import SwiftUI

struct Register: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var text: String = ""
    @State private var pass: String = ""
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
                Text("Sign up")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                //                    .frame(maxWidth: .infinity, alignment: .leading alignment: .).padding(.leading, 100) // Center align text
                Spacer()
            }.padding()
                .frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        ScrollView{
            VStack{
                
                
                
                Text("Create account").font(.system(size: 18)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).padding(.top,50).padding(.bottom,10)
                Text("Unlock your career potential with just one click.").font(.system(size: 14))
                Text(" Create your account").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                
                HStack {
                    // Prefix Icon
                    //Image("email").padding(.trailing,5)
                    
                    // TextField
                    TextField("Enter full name *", text: $text)
                    
                    
                    
                    // Suffix Icon
                    if !text.isEmpty {
                        Button(action: {
                            text = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }}.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)) .padding(10)
                
                HStack {
                    // Prefix Icon
                    //Image("email").padding(.trailing,5)
                    
                    // TextField
                    TextField("Enter mobile number *", text: $text)
                    
                    
                    
                    // Suffix Icon
                    if !text.isEmpty {
                        Button(action: {
                            text = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }}.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)) .padding(10)
                HStack {
                    // Prefix Icon
                    //Image("email").padding(.trailing,5)
                    
                    // TextField
                    TextField("Enter email address", text: $text)
                    
                    
                    
                    // Suffix Icon
                    if !text.isEmpty {
                        Button(action: {
                            text = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }}.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)) .padding(10)
                
                HStack {
                    // Prefix Icon
                    //Image("password").padding(.trailing,5)
                    
                    // TextField
                    TextField("Create password *", text: $pass)
                    
                    
                    
                    // Suffix Icon
                    Button(action: {
                        //text = ""
                    }) {
                        Image(systemName: "eye")
                            .foregroundColor(.gray)
                    }
                }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)) .padding(10)
                HStack{
                    Spacer()
                    Text("Forgot Password?")
                }.padding(.trailing,15)
                
                Text("Log In").font(.system(size: 16)).fontWeight(.bold).padding().foregroundColor(Color(AppColors.whiteColor)).frame(maxWidth: .infinity,maxHeight: 50).background(AppColors.secondaryText).cornerRadius(10).padding()
                
                HStack{
                    VStack{
                        
                    }.frame(width:30, height: 1).background(Color(AppColors.unFocusColor))
                    Text("Or Continue with").foregroundColor(Color(AppColors.unFocusColor))
                    VStack{
                        
                    }.frame(width:30, height: 1).background(Color(AppColors.unFocusColor))
                }
                HStack{
                    Text("Already have an account?").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.appBarColor))
                    NavigationLink(destination: Login().navigationBarBackButtonHidden(true) ) {
                        Text("Sign in").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText))
                    }
                }.padding(.top,10)
                
                Text("By clicking you confirm that you agree to atB Jobs").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.appBarColor)).padding(.top,5)
                Text("Terms and Conditions and Privacy Policy.").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText))
                
                Spacer()
            }.navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    Register()
}
