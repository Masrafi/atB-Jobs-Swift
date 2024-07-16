//
//  SimilarJobs.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 9/6/24.
//

import SwiftUI

struct SimilarJobs: View {
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
                Text("Similar Jobs")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                    .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 100) // Center align text
                Spacer()
            }.padding()
                .frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        ScrollView{
            VStack(alignment: .leading){
            
                Text("We found 25678 jobs").font(.system(size: 14)).fontWeight(.bold).padding(.leading,15)
            VStack{
                ForEach(0 ..< 4) { _ in
                    JobBody()
                }
            }.padding([.leading, .bottom,.trailing], 15)
            
            Spacer()
        }
    }
    }
}

#Preview {
    SimilarJobs()
}
