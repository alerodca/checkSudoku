import UIKit

// Making a sudoku that will check
var arrayBidimensional: [[Int]] = [
    [1,2,3,4,5],
    [2,3,4,5,1],
    [3,4,5,1,2],
    [4,5,1,2,3],
    [5,1,2,3,4]
]

checkSudoku(arrayBidimensional: arrayBidimensional)

func checkSudoku(arrayBidimensional: [[Int]]) {
    var isCorrect: Bool = true
    var numbersSetHorizontaly: NSCountedSet
    var numbersSetVerticaly: NSCountedSet
    var finalBidimensionalArray = arrayBidimensional.count-1
    var verticalLine: [Int] = []

    for insideArray in arrayBidimensional {
        numbersSetHorizontaly = NSCountedSet(array: insideArray)
        for value in numbersSetHorizontaly {
            if (value as! Int == 0) {
                print("ERROR. El valor mínimo debe ser 1")
            } else {
                if (numbersSetHorizontaly.count(for: value) != 1) {
                    isCorrect = false
                    print("El valor \(value) se encuentra repetido horizontalmente")
                }
            }
        }
    }
    for i in 0...finalBidimensionalArray {
        verticalLine = []
        for j in 0...arrayBidimensional[i].count-1 {
            verticalLine.append(arrayBidimensional[j][i])
        }
        numbersSetVerticaly = NSCountedSet(array: verticalLine)
        for value in numbersSetVerticaly {
            if (value as! Int == 0) {
                print("ERROR. El valor mínimo debe ser 1")
            } else {
                if (numbersSetVerticaly.count(for: value) != 1) {
                    isCorrect = false
                    print("El valor \(value) se encuentra repetido verticalmente")
                }
            }
        }
    }
    
    if isCorrect {
        print("¡FELICIDADES, el sudoku no tiene fallos!")
    }
}
