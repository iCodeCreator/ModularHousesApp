//
//  AboutCompanyViewController.swift
//  ModularHousesApp
//
//  Created by abd ul’Karim 📚 on 10.05.2024.
//

import UIKit

final class AboutCompanyViewController: UIViewController {

    @IBOutlet var aboutCompanyTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutCompanyTextView.backgroundColor = .clear
        aboutCompanyTextView.textColor = .white
        aboutCompanyTextView.text = "Компания, занимающаяся коммерческой недвижимостью, малоэтажным строительством и производством качественных модульных конструкций в России. Все проекты компании активно развиваются по территории России и СНГ. Имеем ряд успешных проектов в сфере малоэтажного строительства. Основная наша задача — дать людям возможность осуществить свою мечту о загородной жизни по доступной цене. Мы сотрудничаем с лучшими поставщиками материалов, имеем собственные технологические цеха, в которых ежедневно трудятся настоящие профессионалы своего дела. Мы берём на себя весь спектр проектных и строительных работ: от архитектурного проектирования до строительного проекта и его исполнения, а также осуществляем авторский надзор за реализацией проекта. Современный стиль, высокое качество, надёжное исполнение — не просто слова, всё это гарантия доступной недвижимости от нашей компании!"
    }


}

