import Foundation


func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {

    var dictionary = [String:Int]()
    
    for idx in 0..<results.count {
        let result = results[idx]
        let competition = competitions[idx]
        let winner = result == 1 ? competition[0] : competition[1]
        
        if var points = dictionary[winner] {
            points += 3
            dictionary[winner] = points
        } else {
            dictionary[winner] = 3
        }
    }
    
    let sortedResult = dictionary.sorted(by: { (dict1, dict2) -> Bool in
        return dict1.value > dict2.value
    })
    
    return sortedResult.first?.key ?? ""
}

let competitions = [["HTML", "C#"], ["C#", "Python"], ["Python", "HTML"]]
let results = [0, 0, 1]

tournamentWinner(competitions, results)
