//
//  ContentView.swift
//  Myanmar Honorable People Figma
//
//  Created by Min Thu Khine on 2/13/24.
//

import SwiftUI

struct StartView: View {
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
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Image("start")
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
