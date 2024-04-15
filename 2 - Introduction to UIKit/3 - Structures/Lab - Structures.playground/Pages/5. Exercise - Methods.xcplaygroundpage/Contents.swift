/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book : CustomStringConvertible{
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
    var price: Double = 0.0
    var description : String {
        return "Ramazan"
    }
    init(title: String, author: String, pages: Int, price: Double) {
        self.title = title
        self.author = author
        self.pages = pages
        self.price = price
    }
}
var q1 = Book(title: "fefe", author: "Ramazan", pages: 12, price: 1)
print(q1)

//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    mutating func like(){
        likes += 1
    }
    func getLikes() -> Int{
        return likes
    }
}
var q11 = Post(message: "some mess", likes: 0, numberOfComments: 2)
q11.like()
q11.like()
q11.like()
q11.like()

print(q11.getLikes())

/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
