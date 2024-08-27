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
            VStack {
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
            }
        }
    }
}

#Preview {
    HomeView()
}
