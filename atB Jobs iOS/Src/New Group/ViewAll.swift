//
//  ViewAll.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 1/6/24.
//

import SwiftUI

struct ViewAll: View {
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
                Text("All Category")
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
                
//                ForEach(0 ..< 7) {
//                    imeam in
                    CategoryList(title: "Web Development", count: "271")
                    CategoryList(title: "Sales", count: "1711")
                    CategoryList(title: "Marketing", count: "995")
                    CategoryList(title: "Human Resource", count: "416")
                    CategoryList(title: "Accounting", count: "2000")
                    CategoryList(title: "General Affairs", count: "432")
                    CategoryList(title: "Information System", count: "908")
                    CategoryList(title: "Customer Support", count: "456")
                //}
                
                Spacer()
            }
        }
    }
        }
//struct ViewAll_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewAll()
//    }
//}


struct CategoryList: View {
    let title:String
    let count:String
    var body: some View {
         // Set background color to blue
        NavigationLink(destination: CategoryDetails(dataToPass: title).navigationBarBackButtonHidden(true) ) {
            HStack {
                Image("web")
                    .resizable().frame(width: 20,height: 20)
                   
                
                Text(title)
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.secondaryText))
                    
                Spacer()
                
                Text("220")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color(AppColors.secondaryText)).padding(.trailing,10)
                
            }
            .frame(maxWidth: .infinity, maxHeight: 60).padding()
            .background(Color(AppColors.whiteColor)).overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.blue, lineWidth: 1)
            ).padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15
                                ))
        }
        
    }
}
