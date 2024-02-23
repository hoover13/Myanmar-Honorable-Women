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

                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        
                        HStack(spacing: 20) {
                            if tabSelection > 0  {
                                Button(action: {
                                    tabSelection -= 1
                                }, label: {
                                    CustomButton(text: "Back")
                                })
                            }
                             
                            if  tabSelection < 2 {
                                Button(action: {
                                    tabSelection += 1
                                }, label: {
                                    CustomButton(text: "Next")
                                })
                            }
                             
                            if tabSelection == 2 {
                                NavigationLink {
                                    StartView()
                                        .navigationBarBackButtonHidden()
                                } label: {
                                    CustomButton(text: "Get Started")
                                        .onTapGesture {
                                            isOnboarding = false
                                            tabSelection = 0
                                        }
                                }
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
        } else {
            StartView()
        }
    }
}

#Preview {
    OnBoardingTabView()
}
