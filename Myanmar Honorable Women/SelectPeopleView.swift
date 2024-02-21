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
                                    HStack(alignment: .center) {
                                        Image(person.imageName)
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                        
                                        
                                        VStack {
                                            Text(person.personName)
                                            
                                            Text(person.career)
                                              
                                        }
                                    }
                                }
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
