/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
  static var distance: Double = 0
    static var time: Double = 0
    static var elevation: Double = 0
    func postWorkStats(){
        RunningWorkout.distance = 123
        RunningWorkout.time = 5.30
        RunningWorkout.elevation = 1
    }
    
}
var details=RunningWorkout()
details.postWorkStats()
print("Distance \(RunningWorkout.distance) , time taken \(RunningWorkout.time) and elevation \(RunningWorkout.elevation)")



//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
struct Steps {
    var steps: Int = 0
    var goal: Int
    mutating func  takeStep(){
        steps += 1
    }
}
var trackingData=Steps(steps: 10, goal: 200)
print("Before Method call value of step is \(trackingData.steps) and goal is \(trackingData.goal)")

trackingData.takeStep()
print("After Method call value of step is \(trackingData.steps) and goal is \(trackingData.goal)")


/*:
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
 */
