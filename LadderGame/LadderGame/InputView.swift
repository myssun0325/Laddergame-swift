//
//  InputView.swift
//  LadderGame
//
//  Created by moon on 2018. 3. 23..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//


struct InputView {
    
    enum Question: String {
        case namesOfPlayers = "참여할 사람 이름을 입력하세요. (이름은 쉼표(,)로 구분하세요)"
        case heightOfLadder = "최대 사다리 높이는 몇 개인가요?"
    }
    
    static func ask(question: Question) {
        print(question.rawValue)
    }
    
    func getNamesOfPlayers() -> [String] {
        guard let inputNames = readLine() else {
            return []
        }

        return inputNames.split(separator: ",").map{ String($0) }
    }

    func getHeightOfLadder() -> Int {
        guard let input = readLine(), let heightOfLadder = Int(input) else {
            return 0
        }
        
        return heightOfLadder
    }
}

extension InputView {
    
    /// invalid : true, valid : false
    func check(height: Int, players: [LadderPlayer]) -> Bool {
        return self.checkHeight(height) || self.checkName(players)
    }
    
    private func checkHeight(_ height: Int) -> Bool {
        return 1 > height || height > Int.max
    }
    
    private func checkName(_ players: [LadderPlayer]) -> Bool {
        var flag = false
        
        for player in players {
            flag = checkNameLength(player)
        }
        
        return flag || players.isEmpty
    }
    
    private func checkNameLength(_ player: LadderPlayer) -> Bool {
        return player.name.count > 5
    }
}
