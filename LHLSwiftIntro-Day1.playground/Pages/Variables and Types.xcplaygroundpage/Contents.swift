
//: # Lighthouse Labs
//:
//: ## Intro to Swift
//:
//:

//: ## Variables
//: In swift, you create variables like this:

var greeting = "Hello, world!"

//: the name of the variable is `greeting` and the value is the string "Hello, world!"

var count = 0

//: the name of this variable is `count`, and the value is the number `0`

//: ### Challenge 1
//: Now change greeting to be another string by using the assignment operator `=`





//: ### Challenge 2
//: To inspect the contents of a variable, you can put the name of the variable on a line by itself, or you can use the `print` function:






//: Try incrementing the count
//:
//: You can use one of the following ways:
//:
//: `count = count + 1`
//:
//: `count += 1`



//: ## Types
//: Option-click on the variables `greeting` and `count` to see their type. 

//: ### Challenge 3
//: What type is `greeting`, and is it the same type as `count`?

//: ### Challenge 4
//: What type is `tipAmount`, and  `isOpen from below`?

var tipAmount = 6.01
var isOpen = true

//: Swift infers the type of a variable based on the initial value. This is mostly useful, but sometimes we want to change the inferred type.
//: For example, if we want to make a variable that has decimal precision.
//: To create a Double, we can just specify the type when we create the variable.

var height: Double = 10

//: Since all our variables have types, even if we haven't specifically set them, we can't store any old value in them... only values of the right type.
//: Test this out. Try setting the value of `count` to be `height`:



//: It didn't work, right? They are both numbers, but `count` is an Int, and `height` is a `Double`. There are ways to convert between types, but we won't go into that just now.


//: ## Bonus Challenge
//:
//: It may not be obvious, but the types we are using, `String`, `Int`, `Double`, all have methods you can call on them. Float and Int have a pretty minimal set of things they can do, but String has a lot! type the name of the variable and a '.' to show the autocomplete menu. From this list you can pick uppercaseString and lowercaseString to change the case of the characters.








//: [Next](@next)
