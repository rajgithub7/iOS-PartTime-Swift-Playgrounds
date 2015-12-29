//: [Previous](@previous)

//: # Swift Intro
//:
//: ## Classes and inheritence
//:
//: We saw in the last playground how to create functions, now we're going to create objects. Objects are a thing composed of data and functions that operate on that data.
//: Here is an example object:

class Bicycle {
    var numberOfGears: Int
    var currentGear: Int
    
    init() {
        numberOfGears = 10
        currentGear = 1
    }
    
    func gearUp() {
        currentGear = min(currentGear + 1, numberOfGears)
        // increase the current gear by one, up to the maximum.
        // we use min here because you can never have currentGear over numberOfGears
    }
    
    func gearDown() {
        currentGear = max(currentGear - 1, 1)
        // decrease the current gear by one, up to the minimum
        // we use max here because you can never have currentGear under 1
    }
}

//: Just like with functions, the code above doesn't actually do anything until it's used. It's just the definition, or the blueprint, for an object of type Bicycle.
//:
//: Bicycles have two properties, `numberOfGears` and `currentGear`. They have default values of 10 and 1, but their values can be changed.
//: Bicycles have two functions, `gearUp` and `gearDown` that change the `currentGear` within the range of 1 to `numberOfGears`

var myBike = Bicycle()

myBike.numberOfGears = 16 // upgrade!
myBike.gearUp()
myBike.gearUp()
myBike.gearDown()
myBike.gearUp()
print("my bike is in the \(myBike.currentGear)rd gear")

//: ## Challenge 1
//: Now it's your turn. Create a class called Shape.
//: Shapes should have one Int property: `numberOfSides`.
//: Shapes should have one function, `area` that returns a Double. By default it should just return 0.

class Shape {
    var numberOfSides:Int
    
    init() {
        numberOfSides = 0
    }
    
    func area() -> Double {
        return 0
    }
}

//: ## Challenge 2
//: Now create an instance of that class.

var myShape = Shape()



//: ## Bonus Challenge

//: Not very exciting! Shapes don't really do anything on their own. What we're going to do is extend the idea of a shape by subclassing it and creating a Rectangle.
//: Create a "Rectangle" subclass of Shape, with `width` and `height` properties.
//: Since all Squares have 4 sides, you'll also need to set the initial value of numberOfSides to 4. To do this we need:
//: An init method for Square that sets the initial value of numberOfSides, and takes in a length and height.
//: Be sure to make rectangle's `area()` function work correctly.

class Rectangle : Shape {
    
    var width:Double
    var height:Double
    
    init(width:Double, height:Double) {
        self.width = width
        self.height = height
        super.init() // super.init calls the init of the parent class (Shape)
        // We have to do this before we set a propety on the parent class, like numberOfSides
        self.numberOfSides = 4
    }
    
    override func area() -> Double {
        return width * height
    }
}


// Test your function by uncommenting:

//var myRect = Rectangle(width: 5, height: 10)
//myRect.numberOfSides // should equal 4
//myRect.area()

//: DONE!!! - Head back to compass to do today's tutorial.

