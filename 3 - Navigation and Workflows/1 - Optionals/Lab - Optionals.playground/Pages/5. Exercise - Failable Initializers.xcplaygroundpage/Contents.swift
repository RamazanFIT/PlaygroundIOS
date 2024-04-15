/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        guard ram > 0 else { return nil }
        guard yearManufactured > 1970 && yearManufactured < 2020 else { return nil }
        
        self.ram = ram
        self.yearManufactured = yearManufactured
    }
}


if let myComputer = Computer(ram: 8, yearManufactured: 2015) {
    print("My computer: RAM - \(myComputer.ram)GB, Year Manufactured - \(myComputer.yearManufactured)")
} else {
    print("Invalid parameters for creating a computer.")
}


//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.

let computer1 = Computer(ram: 8, yearManufactured: 2015)
let computer2 = Computer(ram: 16, yearManufactured: 2022)


if let myComputer1 = computer1 {
    print("Computer 1: RAM - \(myComputer1.ram)GB, Year Manufactured - \(myComputer1.yearManufactured)")
} else {
    print("Computer 1 is nil")
}

if let myComputer2 = computer2 {
    print("Computer 2: RAM - \(myComputer2.ram)GB, Year Manufactured - \(myComputer2.yearManufactured)")
} else {
    print("Computer 2 is nil")
}


/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
