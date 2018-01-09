//
//  PasscodeRepository.swift
//  
//
//  Created by Elli Scharlin on 1/9/18.
//

import UIKit
import PasscodeLock

class PasscodeRepository: PasscodeRepositoryType {
    
    var hasPasscode: Bool = true
    var passcode: [String]?
    
    func savePasscode(passcode: [String]) {}
    
    func deletePasscode() {}
    
}
import UIKit
import PasscodeLock

class PasscodeLockConfiguration: PasscodeLockConfigurationType {
    let repository: PasscodeRepositoryType
    var passcodeLength = 4 // Specify the required amount of passcode digits
    var isTouchIDAllowed = true // Enable Touch ID
    var shouldRequestTouchIDImmediately = true // Use Touch ID authentication immediately
    var maximumInccorectPasscodeAttempts = 3 // Maximum incorrect passcode attempts
    
    init(repository: PasscodeRepositoryType) {
        self.repository = repository
    }
    
    init() {
        self.repository = PasscodeRepository() // The repository that was created earlier
    }
}
