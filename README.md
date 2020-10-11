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
### 2. Closure with return values
  - func function((String) -> Int)
  - (String) -> Int ===> takes closure param with string param and returns int

### 3. Shorthand parameter 
  - Inside close instead of declaring variable before `in`, 
  we can access variable via $0, $1 etc..

### 4. Closure can accept multiple params 
  - (String, Double) -> Void
  
### 5. Closure can be returned in functions
  - func function() -> () -> void
  - () -> void is the closure which is returned

### 6. Closure capturing value
  - Any variable declared in function and used inside the closure, the variable value will be retained.
