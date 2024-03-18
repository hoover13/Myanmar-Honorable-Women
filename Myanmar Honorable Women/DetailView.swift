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
                    
                    ScrollView {
                        Image(person.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        
                        Text(person.personName)
                            .font(.system(size: 50))
                            .bold()
                        
                        Text(person.career)
                            .font(.largeTitle)
                            .bold()
                        
                        Text(person.biography)
                            

                        
                    }
                    .padding()
                    .padding(.horizontal, 50)
                   
                    HStack(spacing: 30) {
                        NavigationLink {
                            SelectPeopleView()
                                .navigationBarBackButtonHidden()
                               
                        } label: {
                            Image("back")
                        }
                        
                        
                        NavigationLink {
                            AugmentedRealityView(selectedARImageNameForMMK: person.arImageNameMMK, selectedARImageNameForUSD: person.arImageNameUSD)
                        } label: {
                            Image("view in AR")
                        }
                    }
                }
                .foregroundStyle(.black)
                
                
            }
        }
       
    }
}

#Preview {
    DetailView(person: Person(personName: "Tin Tin Sein", imageName: "Tin Tin Sein", arImageNameMMK: "Tin Tin Sein (MMK)", arImageNameUSD: "Tin Tin Sein (USD)", career: "Female globetrotter", biography: "Tin Tin Sein, Myanmar's first female globetrotter, made history with her extensive travels worldwide. Born in 1919, she defied societal norms, exploring diverse cultures and documenting her adventures. Sein's pioneering spirit and love for exploration inspired generations of travelers in Myanmar and beyond."))
}
