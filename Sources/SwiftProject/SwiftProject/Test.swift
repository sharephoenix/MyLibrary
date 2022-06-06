//
//  Test.swift
//  SwiftProject
//
//  Created by phoenix on 2022/5/25.
//

import UIKit

class Test: NSObject {
    var age = 16
    var address: String?
    var isSubscribed = false

    func test(_ obj: NSObject, content: String) {
        self.age = 8
        self.address = "shanghai"
        let s = self
        print("xxxx")
    }

    deinit {

    }
}
