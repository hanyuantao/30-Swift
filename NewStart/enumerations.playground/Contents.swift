import UIKit

enum CompassPoint{
    case north
    case south
    case east
    case west
}
var direction = CompassPoint.west;
print("direction = \(direction.hashValue)");


direction = .south
print("direction = \(direction.hashValue)");

direction = .north

switch direction {
case .east:
    print("east");
case .west:
    print("west");
case .north:
    print("north");
case .south:
    print("south");
default:
    print("")
}
