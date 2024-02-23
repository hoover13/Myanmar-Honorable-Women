//
//  CustomButton.swift
//  Myanmar Honorable Women
//
//  Created by Min Thu Khine on 2/22/24.
//

import SwiftUI

struct CustomButton: View { 
    var text: String
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(30)
            .shadow(radius: 5)
    }
}

#Preview {
    CustomButton(text: "Next")
}
