/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
 
var content  :[Any] = [20.00,22,"Abc",true]

print(content)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
for item in content {
    if let theItem = item as? Bool {
        print("The boolean has a value of \(theItem)")
    } else if let theItem = item as? Double {
        print("The double has a value of \(theItem)")
    } else if let theItem = item as? Int {
        print("The integer has a value of \(theItem)")
    } else if item is String {
        print("The string has a value of \(item)")
    }
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
let data: [String: Any] = ["FirstBool": true, "FalseBool": false, "Unknown": "90", "AnInteger": 12, "ADouble": 1.1]
print(data)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (_, value) in data {
    if value is Bool {
        continue
    } else if let theValue = value as? Double {
        total2 += theValue
    } else if let theValue = value as? Int {
        total2 += Double(theValue)
    } else if let theValue = value as? String,
        let numValue = Double(theValue) {
        total2 += numValue
    }
}

print(total2)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
