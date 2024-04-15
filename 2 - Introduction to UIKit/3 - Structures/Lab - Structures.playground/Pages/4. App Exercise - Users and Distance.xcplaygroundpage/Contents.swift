/*:
## App Exercise - Users and Distance
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
 */

struct User{
    var name:String
    var age:Int
    var height:Double
    var weight:Double
    var activity=10
}
//:  Create a variable instance of `User` and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your `User` instance using the instance's properties.
var userDetail=User(name: "Xyz", age: 20, height: 6.8, weight: 50.6)
print(userDetail.name)
print(userDetail.age)
print(userDetail.height)
print(userDetail.weight)
print(userDetail.activity)

/*:
 In previous app exercises, you've worked with distance in the fitness tracking app example as a simple number. However, distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.

 - Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
 */
struct Distance{
    var distanceInmeter:Double
    var distanceInfeet:Double
    init(distanceInmeter: Double) {
        self.distanceInmeter = distanceInmeter
        distanceInfeet = self.distanceInmeter / 3.28084
    }
    init(distanceInfeet:Double){
        self.distanceInfeet=distanceInfeet
        distanceInmeter=self.distanceInfeet * 3.28084
    }
}
var distanceData=Distance(distanceInmeter: 1600)
print(distanceData.distanceInmeter)
 distanceData=Distance(distanceInfeet:  1600)
print(distanceData.distanceInmeter)
//:  Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
if(distanceData.distanceInmeter==5249.344){
    print("Verified")
}

//:  Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
var distance = Distance(distanceInfeet: 54)
print(distance.distanceInfeet)

/*:
[Previous](@previous)  |  page 4 of 10  |  [Next: Exercise - Methods](@next)
 */
