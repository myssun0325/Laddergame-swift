//
//  main.swift
//  LadderGame
//
//  Created by JK on 09/10/2017.
//  Copyright © 2017 Codesquad Inc. All rights reserved.
//

import Foundation


func askQuestion(number: Int) {
    let questions = ["참여할 사람은 몇 명인가요?", "최대 사다리 높이는 몇 개인가요?"]
    
    print(questions[number - 1])
}

func getNumberOfPeople() -> Int {
    guard let input = readLine(), let numberOfPeople = Int(input) else {
        return 0
    }
    
    return numberOfPeople
}

func getHeightOfLadder() -> Int {
    guard let input = readLine() else {
        return 0
    }
    
    guard let heightOfLadder = Int(input) else {
        return 0
    }
    
    return heightOfLadder
}

func checkInvalid(_ people: Int, _ height: Int) -> Bool {
    if people == 0 || height == 0 {
        return false
    } else {
        return true
    }
}

func runLadderGame() {
    
    askQuestion(number: 1)
    let numberOfPeople: Int = getNumberOfPeople()
    
    askQuestion(number: 2)
    let heightOfLadder = getHeightOfLadder()
    
    guard checkInvalid(numberOfPeople, heightOfLadder) else {
        return
    }

}


// MARK: Run a program.
runLadderGame()
