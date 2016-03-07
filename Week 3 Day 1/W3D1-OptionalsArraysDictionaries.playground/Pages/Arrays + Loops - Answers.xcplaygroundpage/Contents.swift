//: # Swift Intro
//:
//: ## Arrays
//:
//: Arrays are an ordered data structure consisting of a collection of elements, each identified by an index.
//:
//: This is an array of strings:

var fruits = ["Pear", "Apple", "Tangerine", "Durian"]

//: You access elements using their indexes, so "Pear" has an index of 0

var firstElement = fruits[0]

//: ...and "Tangerine" has an index of 2

var thirdElement = fruits[2]

//: #### Challenge 1
//: Get the second element in fruits. ie) "Apple"

var secondElement = fruits[1]

//: You can add items at the end of the array using the append method

fruits.append("Tomato")

//: Or insert them at the start of the array.

//: #### Challenge 2
//: Insert your favourite fruit at the start of the array. (We haven't covered this so do a quick google search)

fruits.insert("Mango", atIndex: 0)

//: That's an array of strings, but you can create arrays of any type of object.
//: In Swift, the type of object stored in the array needs to be specified.
//: This comes into play when you create empty arrays in order to add items to them later.

var arrayOfFloats = [Float]()
var arrayOfBools = [Bool]()

//: #### Challenge 3
//: Create an empty array of Int using one of these syntaxes, call it `numbers`.
//: Add the numbers 10, 20, 60, 30, 40 to the array.


var numbers = [Int]()
numbers.append(10)
numbers.append(20)
numbers.append(60)
numbers.append(30)
numbers.append(40)


//: ## Loops
//: Loops are a way to execute the same piece of code multiple times
//: A very practical usecase of loops is when you want to go through every element in an Array and do something with it

fruits = ["Pear", "Apple", "Tangerine", "Durian"]

for fruit in fruits {
    print("\(fruit) is a fruit")
}

//: In the above example we made a new variable called fruit every time we loop through the fruits array and then prinited out its value


//: #### Bonus Challenge
//: Write a function that takes in an array of numbers and prints each number in that array

func printNum(array:[Int]) {
    for number in numbers{
        print(number)
    }
}


// Test it by uncommenting the below line of code: (the printed numbers should appear in the console)
//printNum(numbers)

