//
//  ViewController.swift
//  SwiftProject
//
//  Created by phoenix on 2022/5/25.
//

import UIKit
import MyLibrary

#if TEST
import Contacts
#endif

class ViewController: UIViewController {
    let b = Test()
    override func viewDidLoad() {
        super.viewDidLoad()
//        let a = Test()
//        b.test(a, content: "aaaa")

        #if DEBUG
        print("debug")
        #endif
        #if TEST
        let contacts = CNContactsUserDefaults.shared().countryCode
        print("test-kk:\(contacts)")
        #endif
        let l = MyLibrary()
        l.test()
        MyLibrary.testA()
        print("end")
    }
}

class Animal {
    let name = "a"
    let age = 17
    let address = "ab"

    dynamic func p() {
        print("xxx")
    }
}

extension Animal {

    @_dynamicReplacement(for: p())
    func ppp() {
        print("yyyy")
    }
}
