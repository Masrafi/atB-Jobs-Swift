//
//  SwiftUIView.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 29/6/24.
//

import SwiftUI

struct AccountSettings: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var pass: String = ""

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
                Text("Account Settings")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                    .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 100) // Center align text
                Spacer()
            }.padding().frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        VStack(alignment: .leading){
            Text("Current Password").font(.system(size: 16)).fontWeight(.bold).padding(EdgeInsets(top: 30, leading: 15, bottom: 0, trailing: 15))
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
                    .stroke(Color.gray, lineWidth: 1)) .padding([.leading, .trailing], 10)
            Text("New Password").font(.system(size: 16)).fontWeight(.bold).padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
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
                    .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing], 10)
            Text("Confirm New Password").font(.system(size: 16)).fontWeight(.bold).padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
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
                    .stroke(Color.gray, lineWidth: 1)).padding([.leading, .bottom, .trailing], 10)
            
            HStack{
                Spacer()
                Text("Submit").padding(EdgeInsets(top: 15, leading: 40, bottom: 15, trailing: 40)).font(.system(size: 16)).fontWeight(.bold)
                    .background(Color(AppColors.secondaryText))
                    .foregroundColor(.white)
                    .cornerRadius(15).padding(.trailing,15)
            }
            
            Spacer()
        }
    }
}

#Preview {
    AccountSettings()
}
