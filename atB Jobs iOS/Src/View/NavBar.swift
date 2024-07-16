import SwiftUI

struct NextScreenView: View {
    
    @State private var selectedIndex: Int = 0
    @State private var isPresentingScreenB = false

    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeScreenView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
                        .renderingMode(.template)
                }.tag(0)
            
            SearchJobsView()
                .tabItem {
                    Text("Find Jobs")
                    Image(systemName: "person.fill")
                }.tag(1)
            
            ProfileView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "info.circle")
                }.tag(2)
            
            Notification()
                .tabItem {
                    Text("Notification")
                    Image(systemName: "info.circle")
                }.badge("13")
                .tag(3)
            NavBarMore()
                .tabItem {
                    Text("More")
                    Image(systemName: "ellipsis")
                }.tag(4)
            

        }.tint(.pink)
    }
}
