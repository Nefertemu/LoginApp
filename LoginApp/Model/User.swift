
struct User {
    let name: String
    let surname: String
    let loginCredentials: Credentials
    
    static func getUser() -> User {
        User(
            name: "Bogdan",
            surname: "Anishchenkov",
            loginCredentials: Credentials(
                userName: "1",
                password: "1"))
    }
}

struct Credentials {
    let userName: String
    let password: String
}
