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
    var arImageNameMMK: String
    var arImageNameUSD: String
    var career: String
    var biography: String
    
}


var people: [Person] = 

[Person(personName: "Aung San Suu Kyi", imageName: "Aung San Suu Kyi", arImageNameMMK: "Aung San Suu Kyi (MMK)", arImageNameUSD: "Aung San Suu Kyi (USD)", career: "State Counsellor", biography: "Aung San Suu Kyi, born in 1945, is a Burmese politician and Nobel laureate. Renowned for her peaceful resistance to authoritarian rule, she led Myanmar's pro-democracy movement, enduring years of house arrest. As the leader of the National League for Democracy, she won international acclaim and the Nobel Peace Prize in 1991.She is the only person from Myanmar who's won a Nobel Prize."),
 Person(personName: "Chit Po", imageName: "Chit Po", arImageNameMMK: "Chit Po (MMK)", arImageNameUSD: "Chit Po (USD)", career: "Thura Medal Winner", biography: "Thura Ma Chit Po was a Burmese woman who was the one and only civilian woman to have received the Thura medal for bravery. She gathered intelligence on the Karen National Defence Organisation (KNDO) on behalf of the Myanmar Military before she was caught and executed by the KNDO insurgents."),
 Person(personName: "Dar San Ye", imageName: "Dar San Ye", arImageNameMMK: "Dar San Ye (MMK)", arImageNameUSD: "Dar San Ye (USD)", career: "Civilian", biography: "Dar San Ye, a Myanmar woman, bravely confronted a North Korean agent holding a live grenade after a bombing aimed at assassinating South Korean President Chun Doo-Hwan. She was hailed as hero, honored at a government ceremony, and compensated with clothing and money."),
 Person(personName: "Jennifer Tin Lay", imageName: "Jennifer Tin Lay", arImageNameMMK: "Jennifer Tin Lay (MMK)", arImageNameUSD: "Jennifer Tin Lay (USD)", career: "Athlete", biography: "Jennifer Tin Lay, a Paralympic powerlifter from Myanmar, achieved remarkable success by winning multiple medals at international competitions, including the Paralympic Games. Despite being born with a congenital limb deficiency, her determination and skill propelled her to become a champion athlete, inspiring others with her extraordinary accomplishments. She was one of the greatest putters in South East Asia region. Her shot put PB from 1973 is still active as Myanmar national record."),
 Person(personName: "Khin Kyi", imageName: "Khin Kyi", arImageNameMMK: "Khin Kyi (MMK)", arImageNameUSD: "Khin Kyi (USD)", career: "Former Ambassador", biography: "Khin Kyi served as the country's ambassador to India and Nepal. Notably, she was the wife of independence hero Aung San and the mother of Aung San Suu Kyi. Her diplomatic contributions and role in nurturing Myanmar's political legacy remain significant aspects of her accomplished life."),
 Person(personName: "Ludu Daw Amar", imageName: "Ludu Daw Amar", arImageNameMMK: "Ludu Daw Amar (MMK)", arImageNameUSD: "Ludu Daw Amar (USD)", career: "Writer", biography: "Ludu Daw Amar, a distinguished figure in Myanmar, made remarkable contributions to the country's literary and journalistic spheres. Through her extensive writings, she championed causes related to social justice and the empowerment of women. Her fearless reporting and literary endeavors left an indelible mark on Myanmar's cultural and intellectual landscape."),
 Person(personName: "MiMi Aung", imageName: "MiMi Aung", arImageNameMMK: "MiMi Aung (MMK)", arImageNameUSD: "MiMi Aung (USD)", career: "Engineer", biography: "MiMi Aung, a pioneering woman from Myanmar, reached unprecedented heights as the project lead for NASA's Ingenuity Mars helicopter. She directed a diverse team in orchestrating the historic flight, marking the first powered journey on another celestial body. Her visionary leadership and technical prowess continue to inspire aspiring engineers globally."),
 Person(personName: "Mya Sein", imageName: "Mya Sein", arImageNameMMK: "Mya Sein (MMK)", arImageNameUSD: "Mya Sein (USD)", career: "Writer and Educator", biography: "Mya Sein, a notable figure in Myanmar, made substantial contributions to Burmese literature and historical scholarship. Her extensive writings and research efforts were instrumental in documenting Myanmar's cultural heritage and shaping its intellectual landscape, cementing her legacy as a pivotal figure in the country's literary and academic realms."),
 Person(personName: "Oo Zun", imageName: "Oo Zun", arImageNameMMK: "Oo Zun (MMK)", arImageNameUSD: "Oo Zun (USD)", career: "Social worker", biography: "The first social worker, Daw U Soon (1230-1306), was the first person to sow the seeds of the social welfare work for the care of the elderly, which is successfully carried out in Myanmar today."),
 Person(personName: "Tin Tin Sein", imageName: "Tin Tin Sein", arImageNameMMK: "Tin Tin Sein (MMK)", arImageNameUSD: "Tin Tin Sein (USD)", career: "Female globetrotter", biography: "Tin Tin Sein, Myanmar's first female globetrotter embarked on global adventures, chronicling her experiences through compelling narratives and photography. Her journeys served as a source of inspiration, encouraging others to discover new horizons and embrace cultural diversity. Tin Tin Sein's exploration legacy resonates deeply within Myanmar's travel enthusiasts"),
 Person(personName: "Win Min Than", imageName: "Win Min Than", arImageNameMMK: "Win Min Than (MMK)", arImageNameUSD: "Win Min Than (USD)", career: "Actress", biography: "Win Min Than was a celebrated Burmese actress, renowned for her performances in Myanmar's film industry during the mid-20th century. She gained fame for her talent and grace on screen, leaving a lasting legacy in Burmese cinema.Over the years, she has garnered widespread acclaim and numerous awards for her contributions to film. In 1954, she was the first actress from Myanmar to shoot a movie in Hollywood.")
 
]



