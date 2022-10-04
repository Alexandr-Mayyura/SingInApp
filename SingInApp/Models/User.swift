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
            name: "Александр",
            age: 35,
            location: "Россия, Москва",
            email: "Sonickill@yandex.ru",
            bio: "")
    }
}

struct UserData {
    let name: String
    let age: Int
    let location: String
    let email: String
    let bio: String
}
