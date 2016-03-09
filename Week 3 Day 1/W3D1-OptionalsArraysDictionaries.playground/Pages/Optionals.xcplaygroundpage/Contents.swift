import UIKit

//: # Swift Intro
//:
//: ## Optionals and nil
//:
//: So far we've glossed over this topic by avoiding optionals. That's good! We try to avoid optionality, because it simplifies our code. But often optionals can't be avoided.
//:
//: What follows is an explaination of an unavoidable optional.
//:
//: If we have a Double and an Int, and we want to do math with them, we have to convert one of them. We can't add two different types.

var ratio: Double = 10.0
var count: Int = 20

// ratio * count // this line does not compile.

//: To get around this we can convert between types. Creating a new Int or a Double using a Double or an Int as the starting type.

var countDouble = Double(count)

ratio * countDouble // works!

//:
//: With that kind of conversion in mind, let's say we have a string that contains the characters 1 and 0, e.g. "10". That looks like a number, but it's a string that contains a text representation of a number.
//:
//: If we want to add 1 to our number-containing-string, we need to convert it to a number. We can do that!

var numberString = "10"
var convertedNum = Double(numberString)

//: Now look at the type of the variable `convertedNum`. It's not actually a `Double` it's a `Double?`. The question mark at the end of the type indicates that this variable is "optional". That means we might have a double or we might have nothing. This is because, unlike converting an Int to a Double, the conversion between a `String` and a `Double` might fail! It could fail because some strings don't make sense as numbers. How would you convert the string "😎" to a `Double`...?
//:
//: Ok so that's easy to understand! Things that can fail return optionals (`Int?`), things that can't fail give us back non-optionals (`Int`). Cool!
//:
//: So now let's try to add 1 to our `convertedNum` variable.

//convertedNum = convertedNum + 1 // uncomment this line!

//: Looks like the compiler didn't like that! It's giving us a cryptic error about applying binary operators and types and things, and offers the suggestion of adding an exclaimation point!
//:
//: We aren't able to do math with `convertedNum` because while it's easy to say how to add `convertedNum` and `1` together, Swift doesn't know how to add maybe-nothing-maybe-something and `1` together.
//:
//: Adding an exclaimation point is called "force unwrapping". It will make the code work if `convertedNum` contains a number, but it will crash the Playground if our `numberString` contains something that can't be converted to a number.

//: ## Challenge 1
//:
//: Add 1 to convertedNum using a force-unwrap (!).
//: Now let's do the same steps again, converting a string to an Int and then adding 1 to it by force unwrapping, but this time our string is "hello" not "10".

var maybeInt = "hello"
var myNewInt = Int(maybeInt)

// add 1 to myNewInt here:


//: ## Challenge 2
//:
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

//: #### Challenge 2
//: Use unwrapping to increment our number to 11






//: You can also use the `!` opterator to "force-unwrap" a variable. This should only be done after checking that the variable isn't nil, as force unwrapping nil will crash. Because of this danger, force unwrapping is generally avoided when possible.

//: Alternative, some optionals have  thing you can do is conditionally call methods on optionals.

var advancedInt = myNewInt?.advancedBy(10) // will run because maybeInt is not nil

maybeInt = "hello"
myNewInt = Int(maybeInt)

advancedInt = myNewInt?.advancedBy(10) // will not run because maybeInt is nil

//: #### Challenge 3
//: Use the advancedBy method to increment the value inside numberString from 10 to 11







//: [Next](@next)
