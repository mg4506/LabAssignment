/*:
## App Exercise - Step Competition

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 Below is a `User` struct and three `User` instances. These will be used throughout the exercises below to simulate competition in the fitness tracking app.
 */
struct User {
    var name: String
    var stepsToday: Int
    
    init(name: String, stepsToday: Int) {
        self.name = name
        self.stepsToday = stepsToday
    }

    init?(name: String?, stepsToday: Int?) {
        guard let name = name,
            let stepsToday = stepsToday else {return nil}

        self.name = name
        self.stepsToday = stepsToday
    }
}

let stepMaster = User(name: "StepMaster", stepsToday: 8394)
let activeSitter = User(name: "ActiveSitter", stepsToday: 9132)
let monsterWalker = User(name: "MonsterWalker", stepsToday: 7193)

let competitors = [stepMaster, activeSitter, monsterWalker]

func getWinner(competitors: [User]) -> User? {
    var topCompetitor: User?
    
    for competitor in competitors {
        if let top = topCompetitor {
            if competitor.stepsToday > top.stepsToday {
                topCompetitor = competitor
            }
        } else {
            topCompetitor = competitor
        }
    }
    return topCompetitor
}


//:  Write a memberwise initializer inside the `User` struct above that uses variable shadowing for naming the parameters of the initializer.
let winner = getWinner(competitors: competitors)
print(winner?.name ?? "")

//:  Now write a failable initializer inside the `User` struct above that takes parameters `name` and `stepsToday` as an optional `String` and `Int`, respectively. The initializer should return `nil` if either of the parameters are `nil`. Use variable shadowing when unwrapping the two parameters.
User(name: nil, stepsToday: 1234)
User(name: "Munish", stepsToday: nil)
/*:
 _Copyright © 2021 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 2 of 2
 */
