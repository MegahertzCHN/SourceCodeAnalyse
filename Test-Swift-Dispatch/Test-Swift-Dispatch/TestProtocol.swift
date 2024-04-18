//
//  TestProtocol.swift
//  Test-Swift-Dispatch
//
//  Created by Chill on 2024/4/15.
//

import Foundation

protocol MyProtocol {
    func test1()
}

extension MyProtocol {
    func test1() {
        test2()
    }
    func test2() {
        print("MyProtocol --- test2")
    }
}

class TestProtocol: MyProtocol {
    func test1() {
        print("TestProtocol --- test1")
    }
}





