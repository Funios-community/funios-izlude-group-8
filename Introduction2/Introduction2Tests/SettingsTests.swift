//
//  SettingsTests.swift
//  Introduction2Tests
//
//  Created by Tommy-amarbank on 01/08/22.
//

import XCTest
@testable import Introduction2

class SettingsTests: XCTestCase {
    
    func test_datasource_shouldBeConnected(){
        let sb = UIStoryboard(name: "Dashboard", bundle: nil)
        
        
        let SUT = sb.instantiateViewController(identifier: "SettingsViewController") as! SettingsViewController
        SUT.loadViewIfNeeded()
        XCTAssertNotNil(SUT.tableView.dataSource)
    }
}
