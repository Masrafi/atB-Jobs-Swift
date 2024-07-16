
import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            VStack{
                ProfilePic()
                Divider().background(Color(AppColors.unFocusColor))
                HStack {
                    VStack(alignment: .leading){
                        Text("Your profile strength 0 %").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText)).padding(.top,10)
                        Text("Completeness of atB Jobs Profile (0/12)").font(.system(size: 14)).foregroundColor(Color(AppColors.unFocusColor))
                        NavigationLink(destination: ProfileStrength().navigationBarBackButtonHidden(true)) {
                            Text("Complete  Profile").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.whiteColor)).frame(width: 170,height: 40).background(AppColors.secondaryText).cornerRadius(10)
                        }
                    }
                    Spacer()
                }.padding(.leading,15)
                Divider().frame(height:5).background(Color(AppColors.unFocusColor.opacity(0.3))).padding(.top,5)
                HStack(spacing: 16){
                    Spacer()
                    NavigationLink(destination: ProfileViewDetails().navigationBarBackButtonHidden(true)) {
                        VStack(alignment: .leading){
                            Image("view_profile").resizable().frame(width: 30, height: 30)
                            Text("View Profile").font(.system(size: 14)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.white).foregroundColor(Color(AppColors.blackColor))
                        
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                    NavigationLink(destination: ProfileViewDetails().navigationBarBackButtonHidden(true)) {
                        VStack(alignment: .leading){
                            Image("view_profile").resizable().frame(width: 30, height: 30)
                            Text("Update Profile").font(.system(size: 14)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.white).foregroundColor(Color(AppColors.blackColor))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                    Spacer()
                }.frame(height: 100)
                
                
                
                
                
                HStack(spacing: 16){
                    Spacer()
                    VStack(alignment: .leading){
                        Image("view_profile").resizable().frame(width: 30, height: 30)
                        Text("CV manager/resume").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white).foregroundColor(Color(AppColors.blackColor))
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    Spacer()
                }.frame(height: 100)
                
                
                
                
                
                HStack(spacing: 16){
                    Spacer()
                    NavigationLink(destination: AppliedJobs().navigationBarBackButtonHidden(true) ) {
                        VStack(alignment: .leading){
                            Image("view_profile").resizable().frame(width: 30, height: 30)
                            Text("Applied Jobs").font(.system(size: 14)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.white).foregroundColor(Color(AppColors.blackColor))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                    NavigationLink(destination: SavedJobs().navigationBarBackButtonHidden(true) ) {
                        
                        VStack(alignment: .leading){
                            Image("view_profile").resizable().frame(width: 30, height: 30)
                            Text("Saved Jobs").font(.system(size: 14)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.white).foregroundColor(Color(AppColors.blackColor))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                    Spacer()
                }.frame(height: 100)
                
                
                
                
                
                HStack(spacing: 16){
                    Spacer()
                    VStack(alignment: .leading){
                        Image("view_profile").resizable().frame(width: 30, height: 30)
                        Text("View Profile").font(.system(size: 14)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white).foregroundColor(Color(AppColors.blackColor))
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    NavigationLink(destination: FollowedCompanies().navigationBarBackButtonHidden(true) ) {
                        VStack(alignment: .leading){
                            Image("view_profile").resizable().frame(width: 30, height: 30)
                            Text("Follow Company").font(.system(size: 14)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.white).foregroundColor(Color(AppColors.blackColor))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                    Spacer()
                }.frame(height: 100)
                Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                HStack{
                    Text("Recommended Jobs").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor))
                    Spacer()
                    Image("recommend_job").resizable().frame(width: 30, height: 30)
                }.padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                VStack{
                    JobBody()
                    JobBody()
                    JobBody()
                    JobBody()
                }.padding([.leading,.bottom,.trailing],15)
                Spacer()
            }
        }
    }
}

#Preview {
    ProfileView()
}


struct ProfilePic: View {
    var body: some View {
            VStack(alignment: .leading){
                HStack{
                    ZStack{
                        HStack{
                            HStack{
                                Image("masrafi").resizable().font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 80,height: 80).background(AppColors.whiteColor).cornerRadius(50)
                            }.frame(width: 100,height: 100).background(Color(AppColors.whiteColor)).cornerRadius(79)
                            
                        }.frame(width: 110,height: 110).background(Color(AppColors.indicatorColor)).cornerRadius(79).padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 5))
                        Text("100%").font(.system(size: 14)).fontWeight(.bold
                        ).foregroundColor(Color(AppColors.appBarColor)).frame(width: 50,height: 25).background(AppColors.whiteColor).cornerRadius(20).shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0).padding(.top, 110)
                    }
                    VStack(alignment: .leading){
                        Text("Masrafi Anam").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Mobile Application Engineer").font(.system(size: 14)).fontWeight(.medium).foregroundColor(Color(AppColors.unFocusColor))
                    }
                    Spacer()
                }
                
            }.frame(maxWidth:  .infinity )  // Set specific width and height
                .background(Color(AppColors.whiteColor)).padding(.top, 1)
            
       
    }
}
