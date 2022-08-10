//
//  TaodiZooTests.swift
//  TaodiZooTests
//
//  Created by 李旭峰 on 2022/8/10.
//

import XCTest
@testable import TaodiZoo

class TaodiZooTests: XCTestCase {
    var panda:Panda!
    override func setUpWithError() throws {
        panda = Panda()
    }

    override func tearDownWithError() throws {
        panda = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testUpSatiety() {
        XCTAssertEqual(panda.satiety, 60, "熊猫的默认饱食度错误，默认饱食度应该为60")
        panda.upSatiety(offset: 15)
        XCTAssertEqual(panda.satiety, 75, "熊猫的饱食度错误，饱食度增加15后应该为75")
    }
    func testdownSatiety() {
        XCTAssertEqual(panda.satiety, 60, "熊猫的默认饱食度错误，默认饱食度应该为60")
        panda.downSatiety(offset: 15)
        XCTAssertEqual(panda.satiety, 45, "熊猫的饱食度错误，饱食度降低15后应该为45")
    }
    func testPrefer() {
        XCTAssertEqual(panda.favorability, 80, "熊猫的默认好感度错误，默认好感度应该为80")
        panda.prefer(offset: 15)
        XCTAssertEqual(panda.favorability, 95, "熊猫的高感度错误，高感度提升15后应该为95")
    }
    func testAnnoying() {
        XCTAssertEqual(panda.favorability, 80, "熊猫的默认好感度错误，默认好感度应该为80")
        panda.annoying(offset: 15)
        XCTAssertEqual(panda.favorability, 65, "熊猫的高感度错误，高感度降低15后应该为65")
    }
    
    func testEattingFavoriteFoot() {
        XCTAssertEqual(panda.favorability, 80, "熊猫的默认好感度错误，默认好感度应该为80")
        XCTAssertEqual(panda.satiety, 60, "熊猫的默认饱食度错误，默认饱食度应该为60")
        panda.eat(food: "竹子")
        XCTAssertEqual(panda.favorability, 90, "熊猫的高感度错误，吃竹子后高感度为90")
        XCTAssertEqual(panda.satiety, 70, "熊猫的饱食度错误，吃竹子后饱食度应该为70")
    }
    func testEattingDislikedFood(){
        XCTAssertEqual(panda.favorability, 80, "熊猫的默认好感度错误，默认好感度应该为80")
        XCTAssertEqual(panda.satiety, 60, "熊猫的默认饱食度错误，默认饱食度应该为60")
        panda.eat(food: "钉子")
        XCTAssertEqual(panda.favorability, 70, "熊猫的高感度错误，吃钉子后高感度为90")
        XCTAssertEqual(panda.satiety, 50, "熊猫的饱食度错误，吃钉子后饱食度应该为70")
    }
    func testEattingNormalFood() {
        XCTAssertEqual(panda.favorability, 80, "熊猫的默认好感度错误，默认好感度应该为80")
        XCTAssertEqual(panda.satiety, 60, "熊猫的默认饱食度错误，默认饱食度应该为60")
        panda.eat(food: "西瓜")
        XCTAssertEqual(panda.favorability, 85, "熊猫的高感度错误，吃西瓜后高感度为85")
        XCTAssertEqual(panda.satiety, 65, "熊猫的饱食度错误，吃西瓜后饱食度应该为65")
    }
}
