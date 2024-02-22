//
//  OnBoardingTabView.swift
//  OnBoarding
//
//  Created by Min Thu Khine on 2/20/24.
//

import SwiftUI

struct OnBoardingTabView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @State private var tabSelection = 0
    
    var body: some View {
        
        if isOnboarding ?? true {
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
                        
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    Button(action: {
                        if tabSelection == 2 {
                            isOnboarding = false
                        } else {
                            tabSelection += 1
                        }
                    }, label: {
                        Text(tabSelection == 2 ? "Get Started" : "Next")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30)
                            .shadow(radius: 5)
                    })
                   
                    Spacer()
                    HStack {
                        Image("bottomLeftFrame")
                        Spacer()
                        Image("bottomRightFrame")
                    }
                }
                .ignoresSafeArea()
            }
            
        } else {
            StartView()
        }
        
        
        
    }
}

#Preview {
    OnBoardingTabView()
}
