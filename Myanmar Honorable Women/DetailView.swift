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
                    Spacer()
                }
                .ignoresSafeArea()
                
                VStack {
                    Image("biography")
                    
                    GeometryReader { geo in
                        ZStack {
                            
                            Image("letter")
                                .resizable()
                        }
                        
                        ScrollView {
                            VStack(alignment: .center)  {
                                Image(person.imageName)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                                Text(person.personName)
                                
                                Text(person.career)
                                
                                Text(person.biography)
                                
                            }
                            
                        }
                        .frame(width: geo.size.width * 0.58, height: geo.size.height * 0.8)
                        .offset(y: +55)
                        .padding(.horizontal, 80)
                        
                    }
                    
                    NavigationLink {
                        AugmentedRealityView(selectedARImageNameForMMK: person.arImageNameMMK, selectedARImageNameForUSD: person.arImageNameUSD)
                    } label: {
                        Image("see Magic")
                    }
                }
            }
        }
    }
}

#Preview {
    DetailView(person: Person(personName: "Aung San Suu Kyi", imageName: "aung sann su kyi", arImageNameMMK: "", arImageNameUSD: "", career: "Leader", biography: "aung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyiaung sann su kyi"))
}
