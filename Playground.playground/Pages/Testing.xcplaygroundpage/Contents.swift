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
canvas.highPerformance = true
let t = Tortoise(drawingUpon: canvas)
let scale = 20
t.penUp()
t.left(by: 90)
t.forward(steps: 90)
t.right(by: 90)
t.forward(steps: 50)
t.currentHeading()
t.penDown()
t.currentPosition()
func Final(){
    t.forward(steps: 20)
    t.penDown()
    func triangle(){
        var x = 1
        t.forward(steps: x)
        for i in 1...20{

            t.left(by: 90)
            t.forward(steps: 1)
            t.right(by: 90)
            t.forward(steps: 1)
            t.right(by: 180)
            t.forward(steps: x)
            x += 1
            
            t.right(by: 90)
            t.forward(steps: 1)
            t.left(by: 90)
            t.forward(steps: 1)
            t.left(by: 180)
            t.forward(steps: x)
            x += 1
        }
    }
    //fist triangle
    triangle()
    //changing first one
    func change1(){
        t.penUp()
        t.currentHeading()
        t.currentPosition()
        t.right(by: 90)
        t.forward(steps: 2*scale)
        t.right(by: 90)
        t.forward(steps: 19)
        t.currentHeading()
        t.penDown()
    }
    change1()
    //second triangle
    triangle()
    //changing second one
    change1()
    //third triangle
    t.penDown()

    t.right(by: 55)

    triangle()
    //changing third one
    t.penUp()
    t.currentHeading()
    t.currentPosition()
    t.right(by: 35)
    t.forward(steps: 6)
    t.right(by: 90)
    t.forward(steps: 45)
    t.penDown()
    //forth triangle
    t.left(by: 55)
    triangle()
}
Final()
t.currentHeading()
t.currentPosition()
t.left(by: 665)
t.forward(steps: 40)
t.right(by: 90)
t.currentPosition()
t.forward(steps: 40)
t.left(by: 90)
Final()



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
