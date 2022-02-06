import SwiftUI

@main
struct TrackerApp: App {
    @StateObject var locations=Locations()
    
    var body: some Scene {
        WindowGroup{
            TabView{                
                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName:"list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
