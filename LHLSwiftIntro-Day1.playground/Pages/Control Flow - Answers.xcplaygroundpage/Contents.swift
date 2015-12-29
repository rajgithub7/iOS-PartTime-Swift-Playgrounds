//: [Previous](@previous)

//: # Swift Intro
//:
//: ## Control Flow
//:

//: Say we have a varaible that keeps track of how many bicycles we own. Let's say we can own 0 to 100 bicycles

var bicycleCount = 100

//: Say we want to print out the number of bicycles we have.

print("There are " + String(bicycleCount) + " bicycles")

// or you can use this syntax

print("There are \(bicycleCount) bicycles")

//: If our count is 1, this is an awkward sentence.

bicycleCount = 1

print("There are \(bicycleCount) bicycles")

//: We'd much rather see:

print("There is \(bicycleCount) bicycle")

//: So we need to print out different strings depending on the value of `bicycleCount`.
//: For this we use conditional logic. Specifically `if`, `else` and sometimes `else if`. Here's an example:

if 1 == 2 {
    print("The universe is broken")
} else {
    print("All is well")
}

//: ### Challenge 1
//: Now see if you can make an `if`/`else` statement that prints out a grammatically correct description of how many bicycles we have. Have a couple print statements to make sure `bicycleCount` works for both the 1 bicycle and multiple bicycles scenarios

bicycleCount = 1

if bicycleCount == 1 {
    print("There is \(bicycleCount) bicycle")
} else {
    print("There are \(bicycleCount) bicycles")
}

//: ### Challenge 2
//: Now try to add an `else if` clause so it prints out "There are zero bicycles" if the `bicycleCount` is 0

bicycleCount = 0

if bicycleCount == 0 {
    print("There are \(bicycleCount) bicycles")
}else if bicycleCount == 1 {
    print("There is \(bicycleCount) bicycle")
} else {
    print("There are \(bicycleCount) bicycles")
}

//: ### Bonus Challenge
//: Make an if/else block that prints "I think so!" if `inputString` ends in "?", if the string ends in any other character then print "You don't say!"

var inputString = "Do you like bicycles?"

let lastChar = inputString.characters.last

if lastChar == "?"{
    print("I think so!")
} else {
    print("You don't say!")
}
