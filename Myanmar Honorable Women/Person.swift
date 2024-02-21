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

[Person(personName: "Aung San Suu Kyi", imageName: "Aung San Suu Kyi", arImageName: "Aung San Suu Kyi Dollar", career: "State Counsellor", biography: "Aung San Suu Kyi, born in 1945, is a Burmese politician and Nobel Peace Prize laureate. Known for her nonviolent struggle against Myanmar's military junta, she served as State Counsellor from 2016 to 2021."),
 Person(personName: "Chit Po", imageName: "Chit Po", arImageName: "Chit Po(AR)", career: "Thura Medal Winner", biography: "Thura Ma Chit Po was a Burmese woman who was the one and only civilian woman to have received the Thura medal for bravery. She gathered intelligence on the Karen National Defence Organisation (KNDO) on behalf of the Myanmar Military before she was caught and executed by the KNDO insurgents."),
 Person(personName: "Dar San Ye", imageName: "", arImageName: "Win Min Than MMK", career: "Civilian", biography: "Aung San Suu Kyi is the pre-democracy opposition leader in Myanmar, formerly known as Burma. She has been kept under detention for most of the past two decades."),
 Person(personName: "Jennifer Tin Lay", imageName: "Jennifer Tin Lay", arImageName: "Jennifer Tin Lay MMK", career: "Athlete", biography: "Burmese throwing legend. One of the greatest putters in South East Asia region. Her shot put PB from 1973 is still active as Myanmar national record."),
 Person(personName: "Khin Kyi", imageName: "Khin Kyi", arImageName: "Khin Kyi MMK", career: "Former Ambassador of Myanmar to India", biography: ""),
 Person(personName: "Ludu Daw Amar", imageName: "Ludu Daw Amar", arImageName: "Ludu Daw Amar(AR)", career: "Writer", biography: "She is best known for her outspoken anti-government views and radical left wing journalism besides her outstanding work on traditional Burmese arts, theatre, dance and music, and several works of translation from English, both fiction and non-fiction."),
 Person(personName: "MiMi Aung", imageName: "MiMi Aung", arImageName: "MiMi Aung(AR)", career: "Engineer", biography: ""),
 Person(personName: "Mya Sein", imageName: "Mya Sein", arImageName: "Mya Sein(AR)", career: "Writer and Educator", biography: "Daw Mya Sein (13 October 1904 – 10 November 1988) was a Burmese writer, educator and historian. She led the Burma Women's Council, served as a representative of Asia for the League of Nations in 1931, and as a representative at the Geneva Women's Conference; she was recommended for roundtable attendance by the British government and by several international women's organizations"),
 Person(personName: "Oo Zun", imageName: "U Zun", arImageName: "U Zun MMK", career: "Myanmar's first female social worker", biography: "The first social worker , Daw U Soon (1230-1306) was the first person to sow the seeds of social work for the care of the elderly in Myanmar today."),
 Person(personName: "Tin Tin Sein", imageName: "Tin Tin Sein", arImageName: "Tin Tin Sein(AR)", career: "Myanmar's first female globetrotter", biography: "Tin Tin Sein, Myanmar's first female globetrotter, made history with her extensive travels worldwide. Born in 1919, she defied societal norms, exploring diverse cultures and documenting her adventures. Sein's pioneering spirit and love for exploration inspired generations of travelers in Myanmar and beyond."),
 Person(personName: "Win Min Than", imageName: "Win Min Than", arImageName: "Win Min Than MMK", career: "Actress", biography: "Win Min Than was a celebrated Burmese actress, renowned for her performances in Myanmar's film industry during the mid-20th century. She gained fame for her talent and grace on screen, leaving a lasting legacy in Burmese cinema.")
 
]



