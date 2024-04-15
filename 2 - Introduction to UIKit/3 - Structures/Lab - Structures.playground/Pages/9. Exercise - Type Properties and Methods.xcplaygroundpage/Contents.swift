/*:
## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
        
    var userName: String
    var email: String
    var age: Int
    
    static var currentUser = User(userName: "Ramazan", email: "syrlybay", age: 18)
    
    static func login(username: String, email: String, age: Int) {
        currentUser = User(userName: username, email: email, age: age)
    }
    
}

User.currentUser.age = 19
print(User.currentUser)

User.login(username: "jojo", email: "matem", age: 1000)

print(User.currentUser)



/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
 */
