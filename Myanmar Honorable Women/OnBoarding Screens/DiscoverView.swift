//
//  DiscoverView.swift
//  OnBoarding
//
//  Created by Min Thu Khine on 2/20/24.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        
        VStack {
            Image("discover")
            
            Image("discoverText")
            
            Text("Explore the lives of remarkable Myanmar women who have made history. Choose a heroine to discover more.")
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
                .bold()
        }
        .padding()
    }
}

#Preview {
    DiscoverView()
}
