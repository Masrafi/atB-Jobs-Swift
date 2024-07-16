//
//  AppliedJobs.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 2/6/24.
//

import SwiftUI

struct AppliedJobs: View {
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
            }.padding()
                .frame(maxWidth: .infinity, maxHeight: 60).background(Color(AppColors.appBarColor))
        }
        ScrollView{
            VStack{
                
                VStack{
                    AppliedBody()
                    AppliedBody()
                }.padding()
                Spacer()
            }
        }
    }
}

#Preview {
    AppliedJobs()
}


struct AppliedBody: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Facilities Manager").foregroundColor(Color(AppColors.secondaryText)).font(.system(size: 16)).fontWeight(.bold)
                Spacer()
                
                Image(systemName: "heart.fill").resizable()
                    .frame(width: 25,height: 25).foregroundColor(Color(AppColors.unFocusColor))
            }
            HStack{
                Text("HANSA Management Ltd.").foregroundColor(Color(AppColors.blackColor)).font(.system(size: 16)).fontWeight(.bold)
                Spacer()
                
                Image("job_image").foregroundColor(Color(AppColors.whiteColor))
            }
            
            Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 0, bottom: 5, trailing: 0))
            
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Image("applied_jobs").resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20).frame(width: 40,height: 40).background(AppColors.secondaryText.opacity(0.3)).cornerRadius(20)
                        Text("Applied Date:").foregroundColor(Color(AppColors.unFocusColor
                                                                        )).font(.system(size: 16)).fontWeight(.bold)
                        Text("Jan 31st 24").foregroundColor(Color(AppColors.blackColor
                                                                        )).font(.system(size: 16)).fontWeight(.bold)
                    }
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 0, bottom: 5, trailing: 0))

                    HStack{
                        Text("View Details").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.whiteColor)).frame(maxWidth: .infinity,maxHeight: .infinity).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).background(AppColors.secondaryText).cornerRadius(10)
                        Spacer()
                        Text("Applied").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.appBarColor)).frame(maxWidth: .infinity,maxHeight: .infinity).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).background(AppColors.secondaryText.opacity(0.3)).cornerRadius(10)
                    }
                }
            }
            
        }.padding()
            .background(Color(AppColors.whiteColor))
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0)
            .padding(.top, 15)
            .frame(maxWidth: .infinity)
    }
    }


