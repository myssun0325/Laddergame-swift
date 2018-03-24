//
//  InputView.swift
//  LadderGame
//
//  Created by moon on 2018. 3. 23..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//


struct InputView {
    
    enum Question: String {
        case namesOfPlayer = "참여할 사람 이름을 입력하세요. (이름은 쉼표(,)로 구분하세요)"
        case numberOfHeight = "최대 사다리 높이는 몇 개인가요?"
    }
    
    func ask(question: Question) {
        print(question.rawValue)
    }
    
    func getNamesOfPeople() -> Int {
        guard let input = readLine(), let numberOfPeople = Int(input) else {
            return 0
        }
        
        return numberOfPeople
    }

    func getHeightOfLadder() -> Int {
        guard let input = readLine(), let heightOfLadder = Int(input) else {
            return 0
        }
        
        return heightOfLadder
    }

}
