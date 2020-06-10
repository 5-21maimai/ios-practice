//
//  FreeTextDataStore.swift
//  TestProject
//
//  Created by 松居麻衣 on 2020/06/07.
//  Copyright © 2020 松居麻衣. All rights reserved.
//

import Foundation

class FreeTextDataStore {
    let userDefaults = UserDefaults.standard
    let userDefaultsKey = "default"
    
    func save(text: String) {
        userDefaults.set(text, forKey: userDefaultsKey)
    }
    
    func loadText() -> String? {
        let text = userDefaults.object(forKey: userDefaultsKey) as? String
        return text
    }
    
    
}
