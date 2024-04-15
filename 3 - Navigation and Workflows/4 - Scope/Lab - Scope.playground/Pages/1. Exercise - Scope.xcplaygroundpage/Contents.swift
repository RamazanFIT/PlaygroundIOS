/*:
## Exercise - Scope
 
 Using a comment or print statement, describe why the code below will generate a compiler error if you uncomment line 10.
 */
for _ in 0..<10 {
    let foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)")



//The code provided will generate a compiler error if you uncomment line 10 because the variable foo is declared within the scope of the for loop. Variables declared within a scope, such as inside a loop or a function, are only accessible within that scope and are not visible outside of it.
//
//In this specific case, foo is declared within the for loop, and it's only accessible within that loop. Therefore, attempting to access foo outside of the loop, as in the uncommented line 10, will result in a compiler error because foo is not in scope at that point.
//:  Using a comment or print statement, describe why both print statements below compile when similar-looking code did not compile above. In what scope is `x` defined, and in what scope is it modified? In contrast, in what scope is `foo` defined and used?
//# In this code, x is defined in the global scope.
//# It is initialized to 10 before the loop begins.
//# Within the loop, x is incremented by 1 in each iteration.
//# Since x is defined in the global scope, it can be accessed and modified within the loop without any issues.

var x = 10
for _ in 0..<10:
    x += 1
    print("The value of x is \(x)")

# After the loop, x retains its final value and can still be accessed in the global scope.
print("The final value of x is \(x)")



//:  In the body of the function `greeting` below, use variable shadowing when unwrapping `greeting`. If `greeting` is successfully unwrapped, print a statement that uses the given greeting to greet the given name (i.e. if `greeting` successfully unwraps to have the value "Hi there" and `name` is `Sara`, print "Hi there, Sara."). Otherwise, use "Hello" to print a statement greeting the given name. Call the function twice, once passing in a value for greeting, and once passing in `nil`.
func greeting(greeting: String?, name: String) {
    if let greeting = greeting {
        print("\(greeting), \(name).")
    } else {
        print("Hello, \(name).")
    }
}

// Calling the function with a non-nil value for greeting
greeting(greeting: "Hi there", name: "Sara")

// Calling the function with a nil value for greeting
greeting(greeting: nil, name: "John")


//:  Create a class called `Car`. It should have properties for `make`, `model`, and `year` that are of type `String`, `String`, and `Int`, respectively. Since this is a class, you'll need to write your own memberwise initializer. Use shadowing when naming parameters in your initializer.
class Car {
    let make: String
    let model: String
    let year: Int
    
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }
}


/*:
page 1 of 2  |  [Next: App Exercise - Step Competition](@next)
 */
