import UIKit

var arrayBidimensional: [[Int]] = [
    [1,2,3,4,5],
    [2,3,4,5,1],
    [3,4,5,1,2],
    [4,5,1,2,3],
    [5,1,2,3,4]
]

for insideArray in arrayBidimensional {
    let countedSet = NSCountedSet(array: insideArray)
    for value in countedSet {
        if (countedSet.count(for: value) != 1) {
            print("El valor \(value) se encuentra repetido")
        }
    }
}
