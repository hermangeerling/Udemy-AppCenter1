//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Herman on 15-06-18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {
    var entryUnderTest: Entry!
    
    override func setUp() {
        super.setUp()
        entryUnderTest = Entry("Title", "Content")
    }
    
    override func tearDown() {
        entryUnderTest = nil
        super.tearDown()
    }

    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)
        XCTAssertEqual(entry?.title, "Titles", "Title doesn't match")
        XCTAssertEqual(entry?.content, "Content", "Content doesn't match")
    }
}
