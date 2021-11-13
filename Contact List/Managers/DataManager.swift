//
//  DataManger.swift
//  Contact List
//
//  Created by Igor on 13.11.2021.
//

import Foundation

final class DataManager {
    static let shared = DataManager()
    
    let names = ["AAAA", "BBBB", "CCCC", "DDDD", "EEEE", "FFFF", "GGGG"]
    
    let surname = ["QQQQ", "WWWW", "TTTT", "RRRR", "YYYY", "IIII", "OOOO"]
    
    let nums = ["1111", "2222", "3333", "4444", "5555", "6666", "7777", "8888"]
    
    let mails = ["aaa@mail.com", "bbb@mail.com", "ccc@mail.com", "ddd@mail.com", "eee@mail.com", "fff@mail.com"]
    
    private init() {}
}
