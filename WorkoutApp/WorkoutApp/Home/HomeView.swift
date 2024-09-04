//
//  HomeView.swift
//  WorkoutApp
//
//  Created by Aidan Fields on 8/24/24.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 123
    @State var stand: Int = 123
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            
                            Text("52 minutes")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            
                            Text("8 hours")
                                .bold()
                        }
                        .padding(.bottom)
                    }
                    
                    Spacer()
                    
                    ZStack {
                        ProgressCircleView(progress: $calories, goal: 200, color: .red)
                        
                        ProgressCircleView(progress: $calories, goal: 200, color: .green)
                            .padding(.all, 20)
                        
                        ProgressCircleView(progress: $calories, goal: 200, color: .blue)
                            .padding(.all, 40)
                    
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
                
                HStack {
                    Text("Fitness Activity")
                        .font(.title2)
                    
                    Spacer()
                    
                    Button {
                        print("show more")
                    } label: {
                        Text("show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    }

                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count:2)) {
                    ActivityCard(activity: Activity(id: 0, title: "Today steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .green, amount:"9,812"))
                    
                    ActivityCard(activity: Activity(id: 0, title: "Today steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .green, amount:"9,812"))
                    
                    ActivityCard(activity: Activity(id: 0, title: "Today steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .green, amount:"9,812"))
                    
                    ActivityCard(activity: Activity(id: 0, title: "Today steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .green, amount:"9,812"))
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
