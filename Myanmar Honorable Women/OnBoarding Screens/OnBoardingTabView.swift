//
//  OnBoardingTabView.swift
//  OnBoarding
//
//  Created by Min Thu Khine on 2/20/24.
//

import SwiftUI

struct OnBoardingTabView: View {
    
//    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @State private var tabSelection = 0
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("bg")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Image("topLeftFrame")
                        Spacer()
                        Image("topRightFrame")
                    }
                    Spacer()
                      
                    TabView(selection: $tabSelection) {
                        
                        // First Tab
                        DiscoverView()
                            .tag(0)
                        // Second Tab
                        ExploreView()
                            .tag(1)
                        // Third Tab
                        ScanView()
                            .tag(2)
                        // Fourth Tab
                        StartView()
                            .tag(3)
                        
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    HStack(spacing: 20) { 
                        if tabSelection > 0 && tabSelection != 3 {
                            Button(action: {
                                tabSelection -= 1
                            }, label: {
                                Text("Back") 
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(30)
                                    .shadow(radius: 5)
                            })
                        }
                        
                        if tabSelection < 3 {
                            Button(action: {
                                tabSelection += 1
                                
                               
                            }, label: {
                                Text(tabSelection == 2 ? "Get Started" : "Next")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(30)
                                    .shadow(radius: 5)
                                
                            })
                        }
                    }
                    
                    Spacer()
                    HStack {
                        Image("bottomLeftFrame")
                        Spacer()
                        Image("bottomRightFrame")
                    }
                }
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    OnBoardingTabView()
}
