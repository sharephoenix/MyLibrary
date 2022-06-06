//
//  MyNewLibrary.swift
//  
//
//  Created by phoenix on 2022/6/5.
//

import UIKit
import MyLibrary


class MyNewLibrary: NSObject {
    func test() {
        let l = MyLibrary()
        l.test()
    }
}

extension MyLibrary {
    @_dynamicReplacement(for: test())
    func testV1() {
        print("\(#file):\(#function)")
    }
}

extension MyLibrary {
    @_dynamicReplacement(for: testA())
    static func testV2() {
        print("original testA")
    }
}
