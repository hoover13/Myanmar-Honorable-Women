//
//  DetailView.swift
//  Myanmar Honorable People Figma
//
//  Created by Min Thu Khine on 2/13/24.
//

import SwiftUI

struct DetailView: View {
    var person: Person
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
                    
                    Image("biography")
                    
                    ZStack {
                        Image("letter")
                            .resizable()
                        
                        
                        VStack {
                            Image(person.imageName)
                                .resizable()
                                .frame(width: 50, height: 50)
                                
                            Text(person.personName)
                            
                            Text(person.career)
                            
                            Text(person.biography)
                             
                        }
                        .padding(.horizontal, 80)
                        
                    }
                    
                    NavigationLink {
                        AugmentedRealityView(selectedARImageNameForMMK: person.arImageNameMMK, selectedARImageNameForUSD: person.arImageNameUSD)
                    } label: {
                        Image("see Magic")
                    }
                }
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    DetailView(person: Person(personName: "Aung San Suu Kyi", imageName: "aung sann su kyi", arImageNameMMK: "", arImageNameUSD: "", career: "Leader", biography: ""))
}
