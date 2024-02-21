//
//  Person.swift
//  Myanmar Honorable People Figma
//
//  Created by Min Thu Khine on 2/13/24.
//

import Foundation

struct Person: Identifiable {
    
    let id = UUID()
    var personName: String
    var imageName: String
    var arImageName: String
    var career: String
    var biography: String
    
}


var people: [Person] = 
[Person(personName: "Aung San Suu Kyi", imageName: "Aung San Suu Kyi", arImageName: "Aung San Suu Kyi(AR)", career: "Leader", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "Chit Po", imageName: "Chit Po", arImageName: "Chit Po(AR)", career: "Former Secretary-General of the United Nations", biography: ""),
 Person(personName: "Jennifer Tin Lay", imageName: "Jennifer Tin Lay(AR)", arImageName: "Jennifer Tin Lay", career: "Former Secretary-General of the United Nations", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "Khin Kyi", imageName: "Khin Kyi", arImageName: "Khin Kyi(AR)", career: "Former Secretary-General of the United Nations", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "Ludu Daw Amar", imageName: "Ludu Daw Amar", arImageName: "Ludu Daw Amar(AR)", career: "Former Secretary-General of the United Nations", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "MiMi Aung", imageName: "MiMi Aung", arImageName: "MiMi Aung(AR)", career: "Former Secretary-General of the United Nations", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "Mya Sein", imageName: "Mya Sein", arImageName: "Mya Sein(AR)", career: "Former Secretary-General of the United Nations", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "Tin Tin Sein", imageName: "Tin Tin Sein", arImageName: "Tin Tin Sein(AR)", career: "Former Secretary-General of the United Nations", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "U Zun", imageName: "U Zun", arImageName: "U Zun(AR)", career: "Former Secretary-General of the United Nations", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "Win Min Than", imageName: "Win Min Than", arImageName: "Win Min Than(AR)", career: "Former Secretary-General of the United Nations", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades.")
]



