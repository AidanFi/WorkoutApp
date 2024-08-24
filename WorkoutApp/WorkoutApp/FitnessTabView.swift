//
//  FitnessTabView.swift
//  WorkoutApp
//
//  Created by Aidan Fields on 8/24/24.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        //change tab color
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        //change tab text color
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.label]
        //assigns appearance to tabs
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                Text("Home")
                }
            
            HistoricDataView()
                .tag("History")
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
