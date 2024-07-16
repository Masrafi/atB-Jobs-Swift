//
//  Notofocation.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 3/6/24.
//

import SwiftUI

struct Notification: View {
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Text("Notofication")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.whiteColor))
                    .frame(maxWidth: .infinity)
                Spacer()
                
                
            }.padding()
                .frame(width: 500, height: 60)  // Set specific width and height
                .background(Color(AppColors.appBarColor))
            ScrollView{
                VStack{
                    
                    HStack{
                        Text("Earlier").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 30))
                        
                        
                        Text("Recent").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.whiteColor)).frame(width: 170,height: 55).background(AppColors.secondaryText).cornerRadius(10)
                    }.overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(AppColors.secondaryText), lineWidth: 2)
                    ).padding(.top,20)
                    
                    VStack{
                        HStack{
                            
                            Image("notification_job_post_unread")
                            
                            VStack(alignment: .leading){
                                Text("Following company new job post").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText))
                                Text("Your Following Company Fashol has posteda new job post").font(.system(size: 12))
                                HStack{
                                    Image(systemName: "clock")
                                    Text("2 days ago")
                                }
                            }.padding(.leading,15)
                        }
                        
                    }.padding(15)
                        .frame(width: 400, height: 120)  // Set specific width and height
                        .background(Color(AppColors.whiteColor))          // Set background color to blue
                        .cornerRadius(15).shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0).padding(.top, 15)
                    
                    VStack{
                        HStack{
                            
                            Image("notification_application_status_unread")
                            
                            VStack(alignment: .leading){
                                Text("Following company new job post").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText))
                                Text("Your Following Company Fashol has posteda new job post").font(.system(size: 12))
                                HStack{
                                    Image(systemName: "clock")
                                    Text("2 days ago")
                                }
                            }.padding(.leading,15)
                        }
                        
                    }.padding(15)
                        .frame(width: 400, height: 120)  // Set specific width and height
                        .background(Color(AppColors.whiteColor))          // Set background color to blue
                        .cornerRadius(15).shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0).padding(.top, 15)
                    
                    
                    VStack{
                        HStack{
                            
                            Image("notification_job_post_unread")
                            
                            VStack(alignment: .leading){
                                Text("Following company new job post").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText))
                                Text("Your Following Company Fashol has posteda new job post").font(.system(size: 12))
                                HStack{
                                    Image(systemName: "clock")
                                    Text("2 days ago")
                                }
                            }.padding(.leading,15)
                        }
                        
                    }.padding(15)
                        .frame(width: 400, height: 120)  // Set specific width and height
                        .background(Color(AppColors.whiteColor))          // Set background color to blue
                        .cornerRadius(15).shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0).padding(.top, 15)
                    
                    
                    Spacer()
                }
            }
        }
    }
}
