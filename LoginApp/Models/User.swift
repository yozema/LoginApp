//
//  Person.swift
//  LoginApp
//
//  Created by Ilya Zemskov on 12.03.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getPerson() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getCareer()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let company: String
    let division: String
    let position: Position
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getCareer() -> Person {
        Person(
            name: "Ilya",
            surname: "Zemskov",
            photo: "MyPhoto",
            company: "L'Oreal",
            division: "Export CIS",
            position: .divisionalFinanceDirector
        )
    }
}

enum Position: String {
    case divisionalFinanceDirector = "Divisional Finance Director"
    
    var moreDetails: String {
        switch self {
        case .divisionalFinanceDirector:
            return "Started career as an auditor at KPMG. Joined L'Oreal as Commercial Finance Controller in 2015. For past 8 years worked in several divisions within the company and was promoted to Divisional Finance Director."
        }
    }
}
