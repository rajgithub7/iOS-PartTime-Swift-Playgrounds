
//: # Lighthouse Labs
//:
//: ## Intro to Swift
//: ### W1D1 - Variables and Types
//:
//:

//: ## Variables
//: In swift, you create variables like this:

var greeting = "Hello, world!"

//: In the example above, the name of the variable is `greeting` and the value is the string "Hello, world!"

var count = 0

//: In this case, the name of this variable is `count`, and the value is the number `0`

//: ### Challenge 1
//:
//: The data stored in a variable can change. To do this, we use the *assignment operator* `=`.
//: For example, the following code changes the data stored in the `count` variable to the number 10:

count = 10

//: Now it's your turn. Change `greeting` to be a different string by using the assignment operator.




//: Note: unlike math, where `x = 10` and `10 = x` are interchangable, in programming the variable goes on the left of the `=` symbol, and the new value goes on the right.
//:
//:
//: ### Challenge 2
//:
//: We want to add 1 to whatever the value of `count` is now. We could manually look at the value in `count` (10) and put 11 into `count` using the assignment operator. This is good, but if we change what we set `count` to in challenge 1, we're no longer just adding 1 to the current value.
//: We need to set count to whatever count is, plus 1. See if you can figure out the syntax for this.
//:
//: Note: if you're ever unsure of the contents of a variable in a playground, write the variable on a line by itself and you will see its value printed to the right of it. Or you can use the `print` function like so: `print(variableName)`.




//: ## Types
//:
//: Types are very important in Swift. When you create a variable, that variable has a "type". What this means is the variable can only hold one type of data. If the variable is of type `String`, that means you can't put a number in it.
//:
//: Hold down the Option key and click on the variables `greeting` and `count` to see a popup window with information about the variable. If we click on `greeting`, we can see it's a `String`. What type is `count`?

greeting
count

//: ### Challenge 3
//: What happens if you try to put a string in `count`? What happens when you try to put a number in `greeting`. Try to do this below.


//: ### Challenge 4
//: What type are the variables `tipAmount`, and `isOpen`?

var tipAmount = 6.01
// tipAmount's type is:


var isOpen = true
// isOpen's type is:


//: ## Type Inferrence
//:
//: Swift infers (guesses) the type of a variable based on the initial value. This is mostly useful, but sometimes we want to change the inferred type.
//: For example, if we want to make a variable that has decimal precision. Integers (Int) are only whole numbers (1,2,3, etc.) while Floats and Doubles can represent fractional numbers (2.14, 5.99, etc.).
//:
//: To create a Double, all we need to do is specify the type when we create the variable.

var height: Double = 10

//: Since all our variables have types, even if we haven't specifically set them, we can't store any old value in them... only values of the right type.
//: Test this out. Try setting the value of `count` to be `height`:



//: It didn't work, right? They are both numbers, but `count` is an Int, and `height` is a `Double`. There are ways to convert the `Double` 10 into the `Int` 10, but we won't go into that just now.


//: ## Bonus Challenge
//:
//: It may not be obvious, but the types we are using, `String`, `Int`, `Double`, all have methods, bits of code, you can ask them to run. Float and Int have a pretty minimal set of things they can do, but String has a lot! type the name of the variable and a '.' to show the autocomplete menu. From this list you can pick uppercaseString and lowercaseString to change the case of the characters.








//: [Next](@next)
