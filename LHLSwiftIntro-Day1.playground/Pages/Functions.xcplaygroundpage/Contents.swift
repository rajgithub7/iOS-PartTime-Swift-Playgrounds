//: [Previous](@previous)

//: # Swift Intro
//:
//: ## Functions
//:

//: In the last playground, we saw how to print different things depending on certain conditions.
//: In this playground we're going to turn that logic into a function so we can easily repeat it.
//: Here is an example function:

func sayHello() {
    print("ah, hello!")
}

//: Notice that the playground doesn't show anything to the left of the `print` statement. That's because this code hasn't run yet.
//: In order to run it, we have to *call* the `sayHello` function. Let's do that now by uncommenting this line:

//sayHello()

//: Functions can take any number of parameters as input, and do something with that input. Take this example function:

func greet(name: String) {
    print("Ah! Hello, \(name)")
}

//: This is a function that takes a single string as a parameter, and uses it to greet a specific person.

//: ### Challenge 1
//: Try to call this function with your name, so it greets you.





//: ### Challenge 2
//: Now take the code your wrote in the last playground to print out a grammatical description of our bicycleCount, and write a function that takes in an Int and uses that as the bicycleCount. Call the function `pluralize`.







// Test it by uncommenting these lines:

// pluralize(1)
// pluralize(0)
// pluralize(100)

//: Not only can functions take in parameters, but they can return values. So far we've only written functions that don't return anything. Here is an example of a function that takes in an Int and returns an Int

func increment(input: Int) -> Int {
    return input + 1
}

var result = increment(10)

// In this example the returned Int is stored inside the variable result.


//: ### Challenge 3
//: Using that as an example, re-write the `pluralize` function (call it `pluralizedString`) so it returns a String.








// Test it by uncommenting the lines below:

//pluralizedString(1)
//pluralizedString(0)
//pluralizedString(100)


//: ## Bonus Challenge
//:
//: Our current pluralize/pluralized functions can only pluralize a bicycle count. What if we want to pluralize other kinds of things?
//:
//: One way would be to take an input word as well as a count and add "s" to the end of it. Something like:

// pluralizeWord("car", 2) // returns "cars"

//: But, since english is a silly language, adding "s" doesn't always make a correct pluralization. Irregularities are common. Think of octopus/octopi, sheep/sheep and man/men.
//: So let's make it even better, we want a fuction called pluralizeWord that takes in 3 inputs: 1)a singular noun string, 2) a plural noun string, 3) and a count.









// Test your function by uncommenting:

// pluralizeWord("octopus", pluralNoun: "octopi", count: 1)
// pluralizeWord("woman", pluralNoun: "women", count: 2)
// pluralizeWord("apple", pluralNoun: "apples", count: 0)

// You might have noticed that when we have a function that takes multiple inputs, we have to explicitly write out all input names other than the first one ex) pluralNoun and count from above.

//: [Next](@next)
