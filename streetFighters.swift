// Input

// the list of game characters in a 2x6 grid;
// the initial position of the selection cursor (top-left is (0,0));
// a list of moves of the selection cursor (which are up, down, left, right);
// Output

// the list of characters who have been hovered by the selection cursor after all the moves (ordered and with repetition, all the ones after a move, wether successful or not, see tests);
// Rules

// Selection cursor is circular horizontally but not vertically!

// As you might remember from the game, the selection cursor rotates horizontally but not vertically; that means that if I'm in the leftmost and I try to go left again I'll get to the rightmost (examples: from Ryu to Vega, from Ken to M.Bison) and vice versa from rightmost to leftmost.

// Instead, if I try to go further up from the upmost or further down from the downmost, I'll just stay where I am located (examples: you can't go lower than lowest row: Ken, Chun Li, Zangief, Dhalsim, Sagat and M.Bison in the above image; you can't go upper than highest row: Ryu, E.Honda, Blanka, Guile, Balrog and Vega in the above image).

// Test

// For this easy version the fighters grid layout and the initial position will always be the same in all tests, only the list of moves change.

// Notice: changing some of the input data might not help you.


import Foundation

enum Direction {
    case up, down, left, right
}

func checkPosition(position: (row: Int, column: Int), move: Direction) -> (row: Int, column: Int) {
    
    switch move {
        case .up:
            if position.row - 1 < 0 {
                return (position.row, position.column)
            } else {
                return (position.row - 1, position.column)
            }
        case .down:
            if position.row + 1 > 1 {
                return (position.row, position.column)
            } else {
                return (position.row + 1, position.column)
            }
        case .left:
            if position.column - 1 < 0 {
                return (position.row, 5)
            } else {
                return (position.row, position.column - 1)
            }
        case .right:
            if position.column + 1 > 5 {
                return (position.row, 0)
            } else {
                return (position.row, position.column + 1)
            }
    }
}

func streetFighterSelection(fighters: [[String]], position: (row: Int, column: Int), moves: [Direction]) -> [String] {
    // Direction enum values are .up, .down, .left, and .right
    // Do something
    var selectedStreetFighters:[String] = []
    var startPosition = position
    
    for move in moves {
        startPosition = checkPosition(position: startPosition, move: move)
        selectedStreetFighters.append(fighters[startPosition.row][startPosition.column])
    }
    return selectedStreetFighters
}

let fighters = [
    ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
    ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
]
let initial_position = (0,0)
let moves:[Direction] = [.up, .left, .right, .left, .left]

let selected = streetFighterSelection(fighters: fighters, position: initial_position, moves: moves)

print(selected)