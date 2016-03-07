import UIKit

//: # Swift Intro
//:
//: ## Optionals and nil
//:
//: So far we've somewhat glossed over this topic by avoiding optionals, but often they can't be avoided.
//:
//: Say we have a string but the string is actually a number. We want to add 1 to it, so we need to convert it to an Int. But we can run into some complications...

var numberString = "10"

//: We can convert some types like this:

var intVersion = 10
var doubleVersion = Double(intVersion)

//: Let's add 1 to doubleVersion

doubleVersion += 1

//: Well it turns out we can do the same with converting a string to a number:

//: Challenge 1: Convert numberString to an int.

var convertedInt = Int(numberString)

// Now try increment this int by 1 by uncommenting the line below

//convertedInt += 1

//: You may notice you run into an error. Whats the different? Use option click to see what type doubleVersion and convertedInt are. doubleVersion is a Double but convertedInt is an Int? (Int Optional). This is because not all strings can be converted to numbers ex) "hello" cannot be converted to a number but "10" can. Below, try converting the string "hello" to an int. What happens?

var maybeInt = "hello"
var myNewInt = Int(maybeInt)

//: Trying to convert a string to a Int, which cannot be converted to an Int, results in returing a value of nil.
//: Note: myNewInt is still of "Optional Int" type written `Int?`
//: There are a few ways to deal with optionals in swift, and most involve "unwrapping" them.

//: In the below if, we are "unwrapping" myNewInt, ie) unwrapped will only exist if myNewInt is not nil.
//: Moreover, if you option click on the variable unwrapped you will notice that it is of type Int not Int?

if let unwrapped = myNewInt {
    print("\(unwrapped) is an Int and no longer an Int?")
}else{
    print("myNewInt did not unwrap")
}

//: Now let's modify maybeInt above so that myNewInt will convert to a number.

maybeInt = "10"
myNewInt = Int(maybeInt)

//: When we use unwrapping in this case, the variable unwrapped now exists and is 10.
if let unwrapped = myNewInt {
    print("\(unwrapped) is an Int and no longer an Int?")
}else{
    print("myNewInt did not unwrap")
}

//: So, in summary, if you have a "Type?" and want to convert it to a "Type". Use an if let/var statement like above to easily unwrap it.


//: Let's go back to our first example and solve it. The problem was we have a variable called newNumberString set to 10 and we cannot find a way to increment the value inside newNumberString to 11. Use

var newNumberString = "10"

var newConvertedInt = Int(newNumberString)

//newConvertedInt += 1 // uncomment the line to see that this doesnt work doesn't work

//: Challenge 2: Use unwrapping to increment our number to 11

if var incrementedString = newConvertedInt {
    incrementedString += 1
}


//: You can also use the `!` opterator to "force-unwrap" a variable. This should only be done after checking that the variable isn't nil, as force unwrapping nil will crash. Because of this danger, force unwrapping is generally avoided when possible.

//: Another thing you can do is conditionally call methods on optionals.

var advancedInt = myNewInt?.advancedBy(10) // will run because maybeInt is not nil

maybeInt = "hello"
myNewInt = Int(maybeInt)

advancedInt = myNewInt?.advancedBy(10) // will not run because maybeInt is nil

//: Challenge 3: Use the advancedBy method to increment the value inside numberString from 10 to 11

newNumberString = "10"

newConvertedInt = Int(newNumberString)

newConvertedInt?.advancedBy(1)

//: [Next](@next)
