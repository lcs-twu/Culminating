//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point


// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)
//idea from Justin
print("idea from Justin")
let t = Tortoise(drawingUpon: canvas)
let scale = 20
//draw basic
canvas.highPerformance = true

t.penUp()
t.forward(steps: 1*scale)
func drawShape(){
    func BasicGraph(){
    t.penDown()
        
    t.left(by: 60)
    t.forward(steps: 2*scale)
    t.right(by: 60)
        for i in 1...20{
            turtle.forward(steps: 40)
            turtle.left(by: 90)
            turtle.forward(steps: 1)
            turtle.left(by: 90)
            turtle.forward(steps: 40)
            turtle.right(by: 90)
            turtle.forward(steps: 1)
            turtle.right(by: 90)
        }

    t.left(by: 120)
    t.forward(steps: 2*scale)
    t.left(by: 120)
    t.forward(steps: 2*scale)
    t.left(by: 30)
    t.forward(steps: 2*scale)
    t.left(by: 30)
    t.forward(steps: 2*scale)
    t.left(by: 60)
    t.penUp()
    t.forward(steps: 4*scale)
    }

    for xPosition in stride(from: 0, through: 600, by: 4*scale){
            BasicGraph()
    }
    t.forward(steps: -32*scale)
    t.left(by: 90)
    t.forward(steps: 6*scale-13)
    p.right(by: 90)
    p.penDown()
}
for i in 1...6{
    drawShape()
}

canvas.highPerformance = false
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
