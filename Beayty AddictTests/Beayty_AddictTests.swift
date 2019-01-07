//
//  Beayty_AddictTests.swift
//  Beayty AddictTests
//
//  Created by Manuel Marcos Regalado on 23/12/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import XCTest
@testable import Beayty_Addict

class Beayty_AddictTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHomeViewControllers() {
        
        let customTabBarController = CustomTabBarController()
        XCTAssertEqual(customTabBarController.viewControllers?.count, 2, "Number of viewControllers is different" )
    }

    func testCreateNewReview() {
        
          let reviews = ReviewsViewController()
        
//       reviews.createReview(newReview: <#T##String#>)
//        var title = homeViewController.createNavigationTitle().
//        XCTAssertEqual(homeViewController., 2, "Number of
        
    }
    func testFirebase() {
        
    var addRevieVieController = AddReviewViewController()
    var refference = addRevieVieController.ref
    var node = refference.child("Test")
    
    var dict = ["data":"val"]
    var done = false
    
    node.setValue(dict) { (error, result) in
        if error != nil {
            print(error)
        } else {
            print("Result is \(result)")
            done = true
            print("Message saved succesfully - test")
        }
    }
    waitUntil(timeout: 5) {done}
    XCTAssert(done, "Completion should be called")
}
    func waitUntil(timeout: TimeInterval, predicate:(() -> Bool)) {
        var timeoutTime = NSDate(timeIntervalSinceNow: timeout).timeIntervalSinceReferenceDate

        while (!predicate() && NSDate.timeIntervalSinceReferenceDate <
            timeoutTime) {
                RunLoop.current.run(mode: RunLoop.Mode.default, before:
                    NSDate(timeIntervalSinceNow: 0.25) as Date)
        }

    }
}

