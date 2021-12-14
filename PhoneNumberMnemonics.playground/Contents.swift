import Foundation

let dictionary: [Character: [Character]] = [
    "1": ["1"],
    "2": ["a", "b", "c"],
    "3": ["d", "e", "f"],
    "4": ["g", "h", "i"],
    "5": ["j", "k", "l"],
    "6": ["m", "n", "o"],
    "7": ["p", "q", "r", "s"],
    "8": ["t", "u", "v"],
    "9": ["w", "x", "y", "z"],
    "0": ["0"]
]

func phoneNumberMnemonics(_ phoneNumber: String) -> [String] {
    var currentMnemonic = Array(repeating: Character("0"), count: phoneNumber.count)
    var mnemonicsFound = [String]()
    var indexedPhoneNumber = Array(phoneNumber)
    
    
    phoneNumberMnemonicsHelper(0, &indexedPhoneNumber, &currentMnemonic, &mnemonicsFound)
    return mnemonicsFound
}

func phoneNumberMnemonicsHelper(_ idx: Int,
                                _ phoneNumber: inout [Character],
                                _ currentMnemonic: inout [Character],
                                _ mnemonicsFound: inout [String]) {
    
    if idx == phoneNumber.count {
        let mnemonic = String(currentMnemonic)
        mnemonicsFound.append(mnemonic)
        
    } else {
        let digit = phoneNumber[idx]
        let letters = dictionary[digit]!
        
        for letter in letters {
            currentMnemonic[idx] = letter
            print(currentMnemonic)
            phoneNumberMnemonicsHelper(idx+1, &phoneNumber, &currentMnemonic, &mnemonicsFound)
        }
    }
    
}

print(phoneNumberMnemonics("1905"))
