import SwiftUI

struct ProfileStrength: View {
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
                Text("Profile Strength")
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
                ProfilePic()
                Divider().frame(height:5).background(Color(AppColors.unFocusColor.opacity(0.3))).padding(.top,5)
                
               
                Option(title: "Personal Details (+30%)")
                VStack{
                    Option(title: "Full Name (+10%)")
                    Option(title: "Date of Birth (+10%)")
                    Option(title: "Phone Number (+10%)")
                }.padding(.leading,15)
                Option(title: "Career Summary (+10%)")
                Option(title: "kay Skill (+10%)")
                Option(title: "Work Experiance (+10%)")
                Option(title: "Education History (+10%)")
                Option(title: "Certificate (+10%)")
                Option(title: "Projects (+10%)")
                Option(title: "Resume (+10%)")
                
                Spacer()
            }
        }
    }
}

struct Option:View {
    let title: String
    var body: some View {
        HStack{
            Image("tick-circle")
                .resizable()
                .frame(width: 20, height: 20)
                
            Text(title).font(.system(size: 14)).fontWeight(.bold)
            Spacer()
        }.padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 0))
    }
}
