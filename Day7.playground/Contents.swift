import UIKit

// Closure - PART 2
// Closure accepting parameter
func playSport(nameOfSport: (String) -> Void){
    print("Inside playSport()")
    nameOfSport("Cricket")
    print("End of playSport()")
}

playSport { (sport: String) in
    print("Inside the closure: \(sport)")
}

// Closure with return values
func translateMe(name: String, translate: (String) -> String) -> String {
    print("Hello, I am your translator")
    return translate(name)
}

let resultAfterTranslating = translateMe(name: "Akshay") { (nameOfThePerson: String) in
    let result = "Hello, TranslateMe: \(nameOfThePerson)"
    return result
}

print(resultAfterTranslating)

// Shorthand parameter name
// can omit parameter names before in and replace with $0, $1, so on...
let resultAfterShortParameter = translateMe(name: "Akshay") {
    let result = "Hello, Short parameter: \($0)"
    return result
}
print(resultAfterShortParameter)

// Closures with multiple params
func convert(temperature: Double, scale: String, action: (Double, String) -> Void) {
    print("Welcome to Convert Method!")
    print("You can send a temperature and a convert to formula as a closure")
    action(temperature, scale)
}

convert(temperature: 72.0, scale: "F") { (temp, scale) in
    let result: Double
    switch scale {
    case "F":
        result = (temp - 32) * 5/9
        print("\(temp)°C is \(result)°F")
    case "C":
        result = (temp * 9/5) + 32
        print("\(temp)°F is \(result)°C")
    default:
        print("Not a Valid scale")
    }
}

// Returning closures from functions
func returnInstrument(type: String) -> (String) -> Void {
    return {typ in
        print("I am learning \(typ)")
    }
}
let x = returnInstrument(type: "Guitar")
x("Piano")

//closure capturing value
func numOfTimesClosureCalled() -> () -> Void {
    var counter = 0
    return {
        print("Closure called!")
        counter += 1
    }
}

let a = numOfTimesClosureCalled()
// Three times because of counter variable
a()
a()
a()
