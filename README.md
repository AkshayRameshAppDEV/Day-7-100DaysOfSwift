# Day-7-100DaysOfSwift
Day 7 of 100 Days of Swift.

# Day 7

## Learnt the following:

### 1. Closure - PART 2
  - Closure accepts params
  ```swift
  // param1: (String) -> Void     = param1 is a closure parameter which accepts a string and returns void
  func function (param1: (String) -> Void) {
    // body.....
    param1("I am String") //This is a string param which is passed in to the closure
}

// Calling the function with trailing syntax
function { (name: String) in 
  print ("Inside the caller Function \(name)") // Content inside the {...} is the closure wich takes string param ("I am String") and uses here in print statement.
}
  ```
