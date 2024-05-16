//
//  House.swift
//  ModularHousesApp
//
//  Created by abd ul’Karim 📚 on 13.05.2024.
//

import Foundation

struct House {
    let series: String
    let description: String
    let project: [Project]
    static func getHouse() -> [House] {
        [
            House(series: "Скандинавия", description: "Эстетичный дизайн, удобная планировка и качество — все об этой серии модульных домов. Выполнен в лучших традициях Скандинавского стиля — использование натурального дерева в наружной и внутренней отделке, минимум лишних деталей.", project: Project.getProjectsScandinavia()),
            House(series: "Модерн", description: "Современный, энергоэффективный и просторный дом, который подойдет для постоянного проживания всей семьей. Мы выбрали популярный современный дизайн для этой серии, чтобы доказать, что загородная жизнь может быть стильной.", project: Project.getProjectsModern()),
            House(series: "Норвегия", description: "Два панорамных окна и разные размеры модулей создают ощущение увеличенного пространства в доме, а эстетичный внешний вид точно порадует своей оригинальностью. Современный, теплый и удобный вариант, который прекрасно подойдет для постоянного проживания.", project: Project.getProjectNorway()),
            House(series: "Канада", description: "Светлые модульные дома с комбинированной покраской в цвет на выбор. Идеальное сочетание функциональности и удобства — универсальность, легкость в эксплуатации и продуманные планировки.", project: Project.getProjectCanada()),
            House(series: "Бельгия", description: "Необычный дизайн, много естественного света благодаря большим окнам, удобное зонирование, где учитывается каждая мелочь, и качественные материалы — формула идеального модульного дома для постоянного проживания или дачного отдыха.", project: Project.getProjectBelgium())
            ]
    }
}

struct Project {
    let title: String
    let type: String
    let area: String
    let numberModules: String
    let parameters: String
    let description: String
    
    static func getProjectsScandinavia() -> [Project] {
        [
            Project(title: "Скандинавия-16", type: "Дом", area: "16 м²", numberModules: "1", parameters: "4000x4000x2700 мм", description: "Экологичность, стиль и удобство в одном. Уютная спальня и кухня с панорамным окном и террасой позволяют наслаждаться красотой окружающего мира в уединении собственного дома."),
            Project(title: "Скандинавия-24", type: "Дом", area: "24 м²", numberModules: "1", parameters: "6000x4000x2700 мм", description: "Удобный одномодульный вариант для дачного отдыха. Здесь есть все, что необходимо для комфорта: спальная, кухонная зона, санузел и небольшая терраса."),
            Project(title: "Скандинавия-30", type: "Дом", area: "30 м²", numberModules: "2", parameters: "6000x5000x2700 мм", description: "Несмотря на свои небольшие габариты, уместил в себе все самое главное: кухонная зона, совмещенная с гостиной, спальная, санузел, небольшая терраса."),
            Project(title: "Скандинавия-40", type: "Дом", area: "40 м²", numberModules: "2", parameters: "8000x5000x2700 мм", description: "Подойдет для проживания всей семьей. Продумана каждая деталь: спальня, просторный зал, полноценная кухонная зона с обеденным столом, санузел и две террасы"),
            Project(title: "Скандинавия-42.5", type: "Дом", area: "42.5 м²", numberModules: "3", parameters: "8500x5000x2700 мм", description: "В этой планировке уместились спальня, дополнительная комната, которую можно использовать как кабинет или детскую, гостиная, совмещенная с кухней, санузел и компактная терраса."),
            Project(title: "Скандинавия-60", type: "Дом", area: "60 м²", numberModules: "3", parameters: "8500x7000x2700 мм", description: "Самый просторный проект из этой серии. Две полноценные комнаты, большая гостиная, кухонная зона с обеденным столом, увеличенный санузел и терраса.")
        ]
    }
    
    static func getProjectsModern() -> [Project] {
        [
            Project(title: "Модерн-30", type: "Дом", area: "30 м²", numberModules: "2", parameters: "6000x5000x2700 мм", description: "Несмотря на свои небольшие габариты, уместил в себе все самое главное: кухонная зона, совмещенная с гостиной, спальная, санузел, небольшая терраса."),
            Project(title: "Модерн-30.2", type: "Дом", area: "30 м²", numberModules: "2", parameters: "6000x5000x2700 мм", description: "Продумана каждая деталь: просторная гостиная, совмещенная со спальней, полноценная кухонная зона с обеденным столом и санузел."),
            Project(title: "Модерн-40", type: "Дом", area: "40 м²", numberModules: "2", parameters: "8000x5000x2700 мм", description: "Отличный вариант для дачного отдыха: просторная гостиная, совмещенная со спальней, полноценная кухонная зона с обеденным столом, санузел и удобная терраса."),
            Project(title: "Модерн-40.2", type: "Дом", area: "40 м²", numberModules: "2", parameters: "8000x5000x2700 мм", description: "Отличный вариант для дачного отдыха: просторная гостиная, совмещенная со спальней, полноценная кухонная зона с обеденным столом, санузел и удобная терраса. Имеет две входных двери."),
            Project(title: "Модерн-42.5", type: "Дом", area: "42.5 м²", numberModules: "3", parameters: "8500x5000x2700 мм", description: "Удобное зонирование для тех, кто любит разграничение комнат: отгороженная спальня, просторная гостиная, полноценная кухонная зона с обеденным столом и увеличенный санузел."),
            Project(title: "Модерн-60", type: "Дом", area: "60 м²", numberModules: "3", parameters: "8000x7400x2700 мм", description: "Высокая эргономичность с сохранением максимального функционала: две отдельные спальни, увеличенный санузел, большая гостиная, совмещенная с кухонной зоной, и просторная терраса."),
            Project(title: "Модерн-80", type: "Дом", area: "80 м²", numberModules: "4", parameters: "10000x8000x2700 мм", description: "Четыре полноценные спальни, большая гостиная, совмещенная с кухонной зоной, увеличенный санузел и терраса, на которой можно оборудовать место для утреннего кофе"),
            Project(title: "Модерн-105", type: "Дом", area: "105 м²", numberModules: "6", parameters: "14000x7500x2700 мм", description: "Самый просторный проект из этой серии. Две полноценные спальни, детская, большая гостиная, кухонная зона с обеденным столом, увеличенный санузел и терраса.")
        ]
    }
    
    static func getProjectNorway() -> [Project] {
        [
            Project(title: "Норвегия-40", type: "Дом", area: "40 м²", numberModules: "2", parameters: "7000x6000x3100 мм", description: "Мы разработали универсальную планировку в данной серии, чтобы уместить здесь все самое важное для комфортной загородной жизни."),
            Project(title: "Норвегия-40.2", type: "Дом", area: "40 м²", numberModules: "2", parameters: "7000x6000x3100 мм", description: "Уникальный проект с новаторским подходом к планировке, в котором каждый элемент был тщательно продуман, чтобы обеспечить не только эстетическое наслаждение, но и максимальный комфорт для жизни."),
            Project(title: "Норвегия-60", type: "Дом", area: "60 м²", numberModules: "3", parameters: "8500x7000x3100 мм", description: "Самый просторный проект из серии. Отличительной особенностью данного проекта является наличие потолков различной высоты, что позволяет создавать индивидуальный дизайн интерьера.")
        ]
    }
    
    static func getProjectCanada() -> [Project] {
        [
            Project(title: "Канада-24", type: "Дом", area: "24 м²", numberModules: "1", parameters: "6000x4000x2700 мм", description: "Удобный одномодульный вариант для дачного отдыха. Здесь есть все, что необходимо для комфорта: спальная, кухонная зона, санузел и небольшая терраса."),
            Project(title: "Канада-30", type: "Дом", area: "30 м²", numberModules: "2", parameters: "6000x5000x2700 мм", description: "Несмотря на свои небольшие габариты, уместил в себе все самое главное: кухонная зона, совмещенная с гостиной, спальня, сан. узел, небольшая терраса."),
            Project(title: "Канада-42", type: "Дом", area: "42 м²", numberModules: "2", parameters: "7000x6000x2700 мм", description: "Высокоэффективный проект, где продумана каждая деталь: спальня, просторный зал, полноценная кухонная зона с обеденным столом, санузел и просторная терраса."),
            Project(title: "Канада-60", type: "Дом", area: "60 м²", numberModules: "3", parameters: "8500x7000x3100 мм", description: "Самый просторный проект из этой серии. 2 комнаты, большая гостиная, кухонная зона с обеденным столом, увеличенный санузел и терраса, на которой можно оборудовать место для утреннего кофе.")
        ]
    }
    
    static func getProjectBelgium() -> [Project] {
        [
            Project(title: "Бельгия-40", type: "Дом", area: "40 м²", numberModules: "2", parameters: "8000x5000x3100 мм", description: "Подойдет для проживания всей семьей. Продумана каждая деталь: спальня, просторный зал, полноценная кухонная зона с обеденным столом, санузел, прихожая.")
        ]
    }
}
