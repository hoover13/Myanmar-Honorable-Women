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
                        AugmentedRealityView(selectedARImageName: person.arImageName)
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
    DetailView(person: Person(personName: "Aung San Suu Kyi", imageName: "aung sann su kyi", arImageName: "", career: "Leader", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."))
}
