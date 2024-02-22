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
    DetailView(person: Person(personName: "Tin Tin Sein", imageName: "Tin Tin Sein", arImageNameMMK: "Tin Tin Sein (MMK)", arImageNameUSD: "Tin Tin Sein (USD)", career: "Female globetrotter", biography: "Tin Tin Sein, Myanmar's first female globetrotter, made history with her extensive travels worldwide. Born in 1919, she defied societal norms, exploring diverse cultures and documenting her adventures. Sein's pioneering spirit and love for exploration inspired generations of travelers in Myanmar and beyond."))
}
