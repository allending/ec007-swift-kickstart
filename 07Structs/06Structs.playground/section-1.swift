import Foundation

operator prefix √ {}

@prefix func √ (argument:Double) -> Double {
    return sqrt(argument)
}
operator infix ^-^ {precedence 160}

@infix func ^-^ (number:Double, power: Double) -> Double {
    return pow(number, power)
}

struct Vertex {
    var x,y: Double
    
    func coordinates() -> (Double, Double) {
        return (x, y)
    }
    func distanceFrom(otherPoint: Vertex) -> Double {
        let deltaX = otherPoint.x - self.x
        let deltaY = otherPoint.y - self.y
        let distance = √( deltaX^-^2 + deltaY^-^2)
        return distance
    }
}
var pointOne = Vertex(x: 3.0, y: 4.0)
var pointTwo = Vertex(x: -2.0, y: 16.0)
pointOne.distanceFrom(pointTwo)

let (pointOneX, pointOneY) = pointOne.coordinates()
pointOneX
pointOneY

