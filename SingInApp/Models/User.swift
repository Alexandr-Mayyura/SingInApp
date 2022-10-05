//
//  UserData.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 04.10.2022.
//

struct User {
    let login: String
    let password: String
    let userBio: UserData?
    
    static func getUserData() -> UserData {
        UserData(
            image: "photo",
            name: "Александр",
            nickName: "Lock",
            age: "35",
            location: "Россия, Москва",
            email: "Sonickill@yandex.ru",
            bio: "Родился в Москве.")
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
}
