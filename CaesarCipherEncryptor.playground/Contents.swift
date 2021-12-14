import UIKit


func caesarCipherEncryptor(string: String, key: UInt32) -> String {
    let characters = Array(string)
    var encryptedString = ""
    
    for char in characters {
        let unicodeScaler = char.unicodeScalars.first?.value ?? 97
        
        var mod : UInt32 = 0
        var encryptedValue = unicodeScaler
        
        if key > 26 {
            mod = key % 26
            encryptedValue += mod
        } else {
            encryptedValue += key
        }
        
        if encryptedValue > 122 {
            let extra = encryptedValue % 122
            let encrypt = String(Character(UnicodeScalar(96+extra)!))
            encryptedString += encrypt
        } else {
            let encrypt = String(Character(UnicodeScalar(encryptedValue)!))
            encryptedString += encrypt
        }

    }

    return encryptedString
}

let result = caesarCipherEncryptor(string: "abc", key: 26)
print(result)
