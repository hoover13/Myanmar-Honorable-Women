//
//  SelectPeopleView.swift
//  Myanmar Honorable People Figma
//
//  Created by Min Thu Khine on 2/13/24.
//

import SwiftUI

struct SelectPeopleView: View {
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
                    
                    Image("selectHero")
                    
                    ScrollView {
                        ForEach(people) { person in
                            NavigationLink {
                                DetailView(person: person)
                            } label: {
                                ZStack {
                                    Image("row")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    HStack(alignment: .center) {
                                        Image(person.imageName)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 150, height: 150)
                                            .clipShape(Circle())
                                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                            .shadow(radius: 10)
                                        
                                        
                                        
                                        VStack {
                                            Text(person.personName)
                                                .bold()
                                            
                                            Text(person.career)
                                            
                                        }
                                    }
                                }
                                .padding()
                                .foregroundStyle(.black)
                            }
                        }
                    }
                    
                    //                Spacer()
                    //                HStack {
                    //                    Image("bottomLeftFrame")
                    //                    Spacer()
                    //                    Image("bottomRightFrame")
                    //                }
                }
                .ignoresSafeArea()
            }
        }
    }
    
}

#Preview {
    SelectPeopleView()
}
