//
//  NavBar_Screen.swift
//  atB Jobs iOS
//
//  Created by Masrafi Anam on 15/5/24.
//

import SwiftUI

struct OnBoardScreen: View{
        let images = ["onboarding Screen -1", "onboarding Screen -2", "onboarding Screen -3"] // Replace with your image names
        @State private var selectedIndex = 0
    @State private var navigateToNextScreen = false

    var body: some View {
        
        NavigationView {
            VStack {
                // Image Slider
                TabView(selection: $selectedIndex) {
                    ForEach(0..<images.count, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 600)
                            .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .frame(height: 600)
                
                // Navigation Buttons
                HStack {
                    NavigationLink(destination: NextScreenView().navigationBarBackButtonHidden(true),  isActive: $navigateToNextScreen) {
                        
                            Text("Skip").foregroundColor(.black).font(Font.system(size: 20)).fontWeight(.bold)
                        
                    }
                    Spacer()
                    
                    if selectedIndex < images.count - 1 {
                            
                            Button(action: nextImage) {
                                Text("Next").foregroundColor(.white).font(Font.system(size: 20)).fontWeight(.bold)
                            }.padding().frame(width: 100)
                            .background(Color(AppColors.secondaryText))
                                .clipShape(Capsule())
                    } else {
                        NavigationLink(destination: NextScreenView().navigationBarBackButtonHidden(true), isActive: $navigateToNextScreen) {
                            Button(action: {
                                navigateToNextScreen = true
                            }) {
                                Text("Next").foregroundColor(.white).font(Font.system(size: 20)).fontWeight(.bold)
                            }.padding().frame(width: 100)
                                .background(Color(AppColors.secondaryText))
                                .clipShape(Capsule())
                        }
                    }
                }
                .padding()
            }
            //.navigationTitle("Image Slider")
        }
    }

            private func nextImage() {
                if selectedIndex < images.count - 1 {
                    selectedIndex += 1
                }
            }
}
//struct OnBoardScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        OnBoardScreen()
//    }
//}
