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
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

// One pass through the array to float the highest number to the end
for j in 0..<dataSet.count - 1 {
    
    // Compare left value to right value
    if dataSet[j] > dataSet[j + 1] {
        
        // Swap values (when left value is more than right value)
        let temporaryValue = dataSet[j] // Set aside the left value
        dataSet[j] = dataSet[j + 1]     // Replace left with right
        dataSet[j + 1] = temporaryValue // Replace right with the temporary value
        
    }
    
}

// Print the array after the pass
print("Array after pass:")
print(dataSet)
waitForUserInput()
