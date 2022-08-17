
struct User {
    let name: String
    let surname: String
    let aboutMe: String
    let placeOfBirth: String
    let dateOfBirth: String
    let hobby: String
    let job: String
    let loginCredentials: Credentials
    
    static func getUser() -> User {
        User(
            name: "Bogdan",
            surname: "Anishchenkov",
            aboutMe: """
            Привет! Меня зовут Богдан. Я родился в городе Великие Луки, сейчас живу в Санкт-Петербурге. После школы поступил и закончил Санкт-Петербургский Государственный Университет морского и речного флота им. адмирала С. О. Макарова. После него я решил попробовать программирование и так я очень люблю технику Apple, а порог вхождения в программирование под неё один из самых низких на рынке, выбор был очевиден. После нескольких книг Василия Усова и окончательно убедившись в том, что это мне нравится, выбор пал на курс от SwiftBook, о чём я нисколько не жалею ❤️
            """,
            placeOfBirth: "Saint-Petersburg",
            dateOfBirth: "10.03.1998",
            hobby: "Geek culture (videogames, movies) and cars",
            job: "Selling games for Xbox, studying Swift",
            loginCredentials: Credentials(
                userName: "1",
                password: "1"))
    }
}

struct Credentials {
    let userName: String
    let password: String
}
