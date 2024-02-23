//
//  ContentView.swift
//  Myanmar Honorable People Figma
//
//  Created by Min Thu Khine on 2/13/24.
//

import SwiftUI

struct StartView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
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
                      
                    Image("Myanmar Honorable Women")
                    
                    Image("woman")
                    
                    Image("From Past Heroes To Future Inspirations")
                    
                    NavigationLink {
                        SelectPeopleView()
                            .toolbarRole(.editor)
//                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Image("start")
                    }
                        
                    NavigationLink {
                        OnBoardingTabView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Image("tutorial")
                            .onTapGesture {
                                isOnboarding = true
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
    StartView()
}
