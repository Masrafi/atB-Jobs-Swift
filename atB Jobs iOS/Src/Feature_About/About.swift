//
//  About.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 30/6/24.
//

import SwiftUI

struct About: View {
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
                Spacer()
                // }
                Text("About")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                //                    .frame(maxWidth: .infinity, alignment: .leading alignment: .).padding(.leading, 100) // Center align text
                Spacer()
            }.padding()
                .frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        ScrollView{
            VStack(alignment: .leading){
                Text("Who we are?").font(.system(size: 16)).fontWeight(.bold)
                Text("We have been working with Japanese companies in Bangladesh since 2019 on development projects with Japanese companies.As we enter 2022, we have started the product development of atBJobs because we want to create a global standard job matching website with DX-orientation.").font(.system(size: 14)).fontWeight(.medium)
            }.padding()
        }
    }
}

#Preview {
    About()
}
