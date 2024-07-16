//
//  Splash_Screen.swift
//  atB Jobs iOS
//
//  Created by Md Khorshed Alam on 15/5/24.
//

import SwiftUI

struct SplashScreen: View{
    @State var isActive: Bool = false
        var body: some View {
            ZStack {
                if self.isActive {
                    OnBoardScreen()
                } else {
                    Image("splash_screen").resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .edgesIgnoringSafeArea(.all) // Ensures the image fills the entire screen

                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
}
//struct SplashScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SplashScreen()
//    }
//}
