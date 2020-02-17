//
//  SnapshotTestCase.swift
//  SnapshotsSnapshotTests
//
//  Created by Erik Poort on 17/02/2020.
//  Copyright © 2020 Erik Poort. All rights reserved.
//

import XCTest
import FBSnapshotTestCase

class SnapshotTestCase: FBSnapshotTestCase {
    override func setUp() {
        recordMode = false
        super.setUp()
        fileNameOptions = [.OS, .screenScale]
    }
}
