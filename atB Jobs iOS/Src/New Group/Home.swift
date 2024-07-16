import SwiftUI

struct HomeScreenView: View {
    @State private var textFieldInput: String = ""
    let imageNames = ["calender", "camera", "degree", "degree", "experience"]
    var body: some View {
        VStack{
        VStack {
            Spacer()
            HStack(alignment: .top, spacing: 50) {
                TextField("Find Jobs", text: $textFieldInput)
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 24, height: 24)
                
            }
            .padding(10).background(Color(AppColors.whiteColor)).cornerRadius(10)
            .padding([.leading, .trailing, .top, .bottom], 15)
            
            Spacer()
        }.background(Color(AppColors.appBarColor))
        .frame(maxWidth: .infinity, maxHeight: 100)
            ScrollView {
                VStack {
                    
                    
                    HStack {
                        Text("Explore By Category")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        NavigationLink(destination: ViewAll().navigationBarBackButtonHidden(true)) {
                            Text("View All")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .frame(minWidth: 80, minHeight: 35)
                                .background(Color.green.opacity(0.3))
                                .foregroundColor(Color(AppColors.secondaryText))
                                .cornerRadius(8)
                        }
                    }
                    .padding([.leading, .trailing, .top], 15)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(0 ..< 5) { item in
                                NavigationLink(destination: ViewAll().navigationBarBackButtonHidden(true)) {
                                    VStack {
                                        Image(imageNames[item])
                                            .foregroundColor(Color(AppColors.whiteColor))
                                            .frame(width: 80, height: 80)
                                            .background(AppColors.secondaryText)
                                            .cornerRadius(8)
                                        
                                        Text("Development")
                                            .font(.system(size: 12))
                                            .foregroundColor(Color(AppColors.secondaryText))
                                            .fontWeight(.bold)
                                    }
                                }
                            }
                        }
                        .padding(.trailing, 15)
                    }
                    .padding(.leading, 15
                    )
                    
                    HStack {
                        Text("Jobs For You")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("Browse 12350 jobs")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(AppColors.secondaryText))
                    }
                    .padding([.leading, .trailing, .top], 20)
                    VStack{
                        ForEach(0 ..< 4) { _ in
                            JobBody()
                        }
                    }.padding()
                    
                    Spacer()
                }
            }
        }
    }
}

struct JobBody: View {
    var body: some View {
        NavigationLink(destination: JobDetails().navigationBarBackButtonHidden(true) ) {
            VStack(alignment: .leading) {
                HStack {
                    Text("Facilities Manager")
                        .foregroundColor(Color(AppColors.secondaryText))
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color(AppColors.unFocusColor))
                }
                
                Text("HANSA Management Ltd.")
                    .foregroundColor(Color(AppColors.unFocusColor))
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Image("salary_range")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .padding(7)
                                .background(AppColors.secondaryText.opacity(0.1))
                                .cornerRadius(20)
                            
                            Text("Salary: Negotiable")
                                .foregroundColor(Color(AppColors.blackColor))
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                        }
                        
                        HStack {
                            Image("experience")
                                .resizable()
                                .frame(width: 18, height: 18)
                            
                            Text("Full-Time")
                                .foregroundColor(Color(AppColors.secondaryText))
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                        }
                        .padding(.top, 10)
                    }
                    
                    Spacer()
                    
                    Image("job_image")
                        .foregroundColor(Color(AppColors.whiteColor))
                }
                
                Spacer()
            }
            .padding()
            .background(Color(AppColors.whiteColor))
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0)
            .padding(.top, 15)
            .frame(maxWidth: .infinity)
        }
    }
}
