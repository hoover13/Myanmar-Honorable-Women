//
//  ScanView.swift
//  OnBoarding
//
//  Created by Min Thu Khine on 2/20/24.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        
        VStack {
            Image("scan") 
            
            Image("scanText")
            
            Text("Scan a 1000 Myanmar kyat bill or a US 1 dollar bill in landscape mode to reveal the image in Augmented Reality.")
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
                .bold()
        }
        .padding()
    }
}

#Preview {
    ScanView()
}
