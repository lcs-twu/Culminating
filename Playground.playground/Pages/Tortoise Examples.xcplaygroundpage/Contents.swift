//: [Previous](@previous) / [Next](@next)
//: # Tortoise Examples
//:
//: The `CanvasGraphics` framework also allows you to draw using a "LOGO turtle" metaphor.
//:
//: [Documentation for the Tortoise abstraction](http://russellgordon.ca/CanvasGraphics/Documentation/Classes/Tortoise.html) is available.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 500
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import Darwin

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
## Tortoise class

To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
*/

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

//run playground
//command-shift-return

//draw the grid
canvas.drawAxes(withScale: true, by: 20, color: .black)
//canvas.drawAxes(withScale: true, by: 20, color: Color.black)
//where is the turtle
t.currentPosition()

//set scale
let scale=20
canvas.highPerformance = true
//functions
func drawArrow(){
    //draw arrow
    //draw a line
    t.penDown()
    t.forward(steps: 3 * scale)

    //draw the turtle
    t.drawSelf()

    //draw upward line
    t.left(by:90)
    t.forward(steps: 1 * scale)
    t.drawSelf()

    t.right(by:135)
    t.forward(steps: 2^2 * scale)
    t.currentPosition()

    t.right(by: 90)
    t.forward(steps: 2^2 * scale)

    t.right(by: 135)
    t.forward(steps: 1 * scale)

    t.left(by: 90)
    t.forward(steps: 3 * scale)

    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    
    //correct for position
    t.penUp()
    t.left(by: 360)
    t.currentPosition()
    t.currentHeading()
    
    //next arrow
    t.penUp()
    t.forward(steps: 4 * scale + 10)
    
}

    //move more to the bottom left
    t.penUp()
    t.left(by: 90)
    t.forward(steps: 2 * scale)
    t.right(by: 90)
    t.drawSelf()
    t.currentPosition()
    t.currentHeading()

for xPosition in stride(from: 0, through: 360, by: 90){
    
        drawArrow()
    
}
t.left(by: 180)
t.forward(steps: 450)
t.right(by: 90)
t.forward(steps: 55)
t.right(by: 90)
for xPosition in stride(from: 0, through: 360, by: 90){
    
        drawArrow()
    
}

//testing
t.drawSelf()
t.currentPosition()
t.currentHeading()
canvas.highPerformance = false
/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
