/*:
## Exercise - Class Memberwise Initializers and References

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. The base class `Spaceship` and subclasses `Fighter` and `ShieldedShip` have been provided for you below. You will use these to complete the exercises.
 */
class Spaceship {
    let name: String
    var health: Int
    var position: Int
    
    func moveLeft() {
        position -= 1
    }

    func moveRight() {
        position += 1
    }

    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
    
   
}

class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int

    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
    init(weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
}

class ShieldedShip: Fighter {
    var shieldStrength: Int

    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
    
    init(shieldStrength: Int, weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int) {
        self.shieldStrength = shieldStrength
        super.init(weapon: weapon, remainingFirePower: remainingFirePower, name: name, health: health, position: position)
    }
    
}
/*:
 Note that each class above has an error by the class declaration that says "Class has no initializers." Unlike structs, classes do not come with memberwise initializers because the standard memberwise initializers don't always play nicely with inheritance. You can get rid of the error by providing default values for everything, but it is common, and better practice, to simply write your own initializer. Go to the declaration of `Spaceship` and add an initializer that takes in an argument for each property on `Spaceship` and sets the properties accordingly.

 Then create an instance of `Spaceship` below called `falcon`. Use the memberwise initializer you just created. The ship's name should be "Falcon."
 */
var falcon = Spaceship(name: "Falcon", health: 10, position: 0)

/*:
 Writing initializers for subclasses can get tricky. Your initializer needs to not only set the properties declared on the subclass, but also set all of the uninitialized properties on classes that it inherits from. Go to the declaration of `Fighter` and write an initializer that takes an argument for each property on `Fighter` and for each property on `Spaceship`. Set the properties accordingly. (Hint: you can call through to a superclass's initializer with `super.init` *after* you initialize all of the properties on the subclass).

 Then create an instance of `Fighter` below called `destroyer`. Use the memberwise initializer you just created. The ship's name should be "Destroyer."
 */
var destroyer = Fighter(weapon: "", remainingFirePower: 0, name: "Destroyer", health: 0, position: 0)

/*:
 Now go add an initializer to `ShieldedShip` that takes an argument for each property on `ShieldedShip`, `Fighter`, and `Spaceship`, and sets the properties accordingly. Remember that you can call through to the initializer on `Fighter` using `super.init`.

 Then create an instance of `ShieldedShip` below called `defender`. Use the memberwise initializer you just created. The ship's name should be "Defender."
 */
var defender = ShieldedShip(shieldStrength: 0, weapon: "", remainingFirePower: 0, name: "Defender", health: 0, position: 0)

//:  Create a new constant named `sameShip` and set it equal to `falcon`. Print out the position of `sameShip` and `falcon`, then call `moveLeft()` on `sameShip` and print out the position of `sameShip` and `falcon` again. Did both positions change? Why? If both were structs instead of classes, would it be the same? Why or why not? Provide your answer in a comment or print statement below.
let sameShip = falcon
print(sameShip.position)
print(falcon.position)
sameShip.moveLeft()
print(sameShip.position)
print(falcon.position)
//YES because the class take the id of memory not copy it (just get reference)



class SpaceShip {
    let name: String
    var health: Double
    var positionX: Double
    var positionY: Double
    
    func moveLeftX() {
        positionX -= 1
    }

    func moveRightX() {
        positionX += 1
    }
    
    func moveLeftY() {
        positionY -= 1
    }

    func moveRightY() {
        positionY += 1
    }
    
    init(name: String, health: Double, positionX: Double, positionY: Double) {
        self.name = name
        self.health = health
        self.positionX = positionX
        self.positionY = positionY
    }
    
    func getPosOfInter(ship : SpaceShip) -> (Double, Double){
        let k = abs(ship.positionY - self.positionY) / abs(ship.positionX - self.positionX)
        let b = self.positionY - k * self.positionX
        let avgX = abs(ship.positionX - self.positionX) / 2 + self.positionX
        let Y = k * avgX + b
        return (avgX, Y)
    }
    
    static func getPosOfInter(ship1 : SpaceShip, ship2 : SpaceShip) -> (Double, Double){
        return ship1.getPosOfInter(ship: ship2)
    }
    
}

var q1 = SpaceShip(name: "roma", health: 100, positionX: -1, positionY: -5)
var q2 = SpaceShip(name: "roma", health: 100, positionX: 1, positionY: 6)

print(SpaceShip.getPosOfInter(ship1 : q1, ship2 : q2))
print(q1.getPosOfInter(ship: q2))
/*:
 _Copyright © 2021 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 4 of 4
 */
