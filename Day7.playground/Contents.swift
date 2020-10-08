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
