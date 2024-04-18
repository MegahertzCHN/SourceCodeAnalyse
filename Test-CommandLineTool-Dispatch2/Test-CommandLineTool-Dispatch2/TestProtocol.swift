//
//  TestProtocol.swift
//  Test-CommandLineTool-Dispatch2
//
//  Created by Chill on 2024/4/15.
//

import Foundation

protocol MyProtocol {
    func test()
}

class AProtocolClass: MyProtocol {
    func test() {
        
    }
}

struct AProtocolStruct: MyProtocol {
    func test() {
        
    }
}
