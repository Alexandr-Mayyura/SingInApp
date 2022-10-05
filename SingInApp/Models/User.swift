//
//  UserData.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 04.10.2022.
//

struct User {
    let login: String
    let password: String
    let userBio: UserData
    
    static func getUserLogin() -> User {
        User(login: "1", password: "1", userBio: .getUserData())
    }
}

struct UserData {
    let image: String
    let name: String
    let nickName: String
    let age: String
    let location: String
    let email: String
    let bio: String
    
    static func getUserData() -> UserData {
        UserData(
            image: "photo",
            name: "Александр",
            nickName: "Lock",
            age: "35",
            location: "Россия, Москва",
            email: "Sonickill@yandex.ru",
            bio: """
Родился в Москве. Окончил медицинское училище.
Проходил срочную службу в Президентском Полку.
Имеет высшее образование по специальности "Правовое обеспечение национальной безопасности".
Увлечен программированием.
Считает Swiftbook лучшей школой программирования на языке swift.
"""
        )
    }
}
