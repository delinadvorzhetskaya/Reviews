//
//  UserViewModel.swift
//  Reviews
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import Foundation
import SwiftUI

class UserViewModel {
    static var userResponse: [UserResponseModel] {
        getUsers()
    }
    
    static let idArray = [0, 1, 2, 3, 4]
    static let names = ["Александра Митрошина", "Анна Федорова", "Ксения Касвятелик", "Анастасия Теляшова", "Марина Бондарь"]
    static let profileImages = ["alexandramitroshina", "anafedorova", "ksenikasvyatelik", "nastya.teleshova", "mariina.bondar"]
    static let insts = ["@alexandramitroshina", "@anafedorova", "@ksenikasvyatelik", "@nastya.teleshova", "@mariina.bondar"]
    static let likes = ["673,4K", "125,3K", "87,9K", "12,3K", "8,2K"]
    static let texts = ["""
"отгремел Инстапрожектор!

я вот проснулась, смотрю отметки, фото, видео, и даже не верю, что это реально было."
""", """
"Такой крутой вдохновляющий день. Настоящие эксперты с своих областях, трудолюбивые, целеустремленные и креативные спикеры🔥"
""", """
"#инстапрожектор2021 это просто взрыв🔥🔥🔥!!! Я в невероятном экстазе. Никакой воды! Все четко, тезисно, структурированно😭😍

Ну, прям топ!!! Все, как я люблю."
""", """
"Масштабно, креативно, супер полезно🔥

Я в восторге! Через год пойду снова)"
""", """
"Столько фишек новых узнала для продвижения своего блога/клиентов, как улучшить свой продукт🔥👍🏻

СПАСИБО @alexandramitroshina"
"""]
    
    static func getUsers() -> [UserResponseModel] {
        var usersArray: [UserResponseModel] = []
        for user in 0...idArray.count - 1 {
            usersArray.append(UserResponseModel(id: idArray[user], name: names[user], profileImage: profileImages[user], inst: insts[user], likes: likes[user], text: texts[user]))
        }
        return usersArray
    }
}
