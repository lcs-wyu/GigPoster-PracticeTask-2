//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...

//Make a list(Array) of verticies

var polygonVerticies: [Point] = []

polygonVerticies.append(Point(x: 100, y: 200))
polygonVerticies.append(Point(x: 200, y: 350))
polygonVerticies.append(Point(x: 300, y: 440))
polygonVerticies.append(Point(x: 400, y: 520))
canvas.drawCustomShape(with: polygonVerticies)





//Write a function to draw the grid
//Let y values go up by 50 starting at 0 ending at 600
//Draw a grid for reference
for y in stride(from: 0, through: 600, by: 50) {
    
    //Draw the lines
    canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: y))
}
for x in stride(from: 0, through: 400, by: 50) {
    
    //Do the same for the vertical lines
    
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
}


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

