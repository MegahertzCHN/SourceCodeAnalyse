//
//  AClass.swift
//  Test-Swift-FuncDispatch
//
//  Created by Chill on 2024/4/12.
//

import Foundation

class AClass {
    func test1() {
        print("test1")
    }
    func test2() {
        print("test2")
    }
}

extension AClass {
    func test11() {
        print("test11")
    }
}

class BClass: AClass {
    override func test2() {
        print("override test2")
    }
    func test3() {
        print("override test3")
    }
}
