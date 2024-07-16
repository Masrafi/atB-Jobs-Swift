//
//  Contact.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 30/6/24.
//

import SwiftUI

struct Contact: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                Text("About")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                
                Spacer()
            }.padding()
                .frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        ScrollView{
            VStack{
                Text("Send us message").font(.system(size: 16)).fontWeight(.bold).padding(EdgeInsets(top: 30, leading: 15, bottom: 0, trailing: 15))
                HStack {
                    
                    TextField("Create password *", text: $pass)
   
                }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)) .padding([.leading, .trailing, .top], 10)
                
                HStack {
                    
                    TextField("Create password *", text: $pass)
                    
                }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing, .top], 10)
                
                HStack {
                    TextField("Create password *", text: $pass)
                    
                }.padding(EdgeInsets(top: 15, leading: 15, bottom: 60, trailing: 15)).overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)).padding([.leading, .bottom, .trailing, .top], 10)
                
                    Text("Submit").padding(EdgeInsets(top: 15, leading: 100, bottom: 15, trailing: 100)).font(.system(size: 16)).fontWeight(.bold)
                        .background(Color(AppColors.secondaryText))
                        .foregroundColor(.white)
                        .cornerRadius(15).padding(.trailing,15)
            }
        }
    }
}

#Preview {
    Contact()
}
