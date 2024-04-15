/*:
## Exercise - Variables
 
 Declare a variable `schooling` and set it to the number of years of school that you have completed. Print `schooling` to the console.
 */
var schooling : Int = 12
print(schooling)

let schooling2 = 32
//schooling2 = 1
//:  Now imagine you just completed an additional year of school, and update the `schooling` variable accordingly. Print `schooling` to the console.
schooling += 1
//schooling = schooling + 1
print(schooling)

//:  Does the above code compile? Why is this different than trying to update a constant? Print your explanation to the console using the `print` function.
//because we can change the value of the var type
//But we cannot change the value of let(CONST) type

/*:
[Previous](@previous)  |  page 3 of 10  |  [Next: App Exercise - Step Count](@next)
 */
