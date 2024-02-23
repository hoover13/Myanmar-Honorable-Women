//
//  ExploreView.swift
//  OnBoarding
//
//  Created by Min Thu Khine on 2/20/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        
        VStack {
            Image("woman")
            
            Image("exploreText")
            
            Text("Learn about the life of your chosen honorable woman including her biography, accomplishments, and the impact she made on society.")
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
                .bold()
        }
        .padding()
    }
}

#Preview {
    ExploreView()
}
