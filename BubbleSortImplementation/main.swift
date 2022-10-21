//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Russell Gordon on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press return to continue...")
    // Waits for input from user, then discards it
    _ = readLine()
}

// Create an empty list (array)
var dataSet: [Int] = []

// Populate the list

// Best case scenario – already sorted
dataSet.append(3)
dataSet.append(6)
dataSet.append(10)
dataSet.append(13)
dataSet.append(17)
dataSet.append(19)
dataSet.append(89)
dataSet.append(93)
dataSet.append(94)
dataSet.append(96)

//for _ in 1...10 {
//    dataSet.append(Int.random(in: 1...100))
//}


// Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

// Loop through the entire array "n" times
// (however many times there are elements in the array)
for i in 0..<dataSet.count {
    
    // Keep track of whether a pair of numbers was swapped
    var swapped = false
    
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {
        
        // Compare left value to right value
        print("Comparison \(j + 1)... ", terminator: "")
        if dataSet[j] > dataSet[j + 1] {
            
            // Swap values (when left value is more than right value)
            let temporaryValue = dataSet[j] // Set aside the left value
            dataSet[j] = dataSet[j + 1]     // Replace left with right
            dataSet[j + 1] = temporaryValue // Replace right with the temporary value
            print(" values were swapped.", terminator: "")
            
            // Note that a swap occured
            swapped = true
            
        }
        print("")
        
    }
    
    
    // Print the array after the pass
    print("Array after pass \(i + 1):")
    print(dataSet)
    waitForUserInput()
    
    // When no swaps occured, stop the outer loop
    if swapped == false {
        break
    }

}

