//
//  TamagotchiConsoleAppTests.swift
//  TamagotchiConsoleAppTests
//
//  Created by Jaume, Louis (NA) on 30/11/2022.
//

import XCTest

class TamagotchiConsoleAppTests: XCTestCase {

    func testWhenICreateTamagotchiItsWeightHungerAndHappinessAreInitialisedTo0() {
        //arrange
        let expectedWeight = 0
        let expectedHunger = 0
        let expectedHappiness = 0
        //act
        let tamagotchi = Tamagotchi()
        //assert
        XCTAssertEqual(expectedWeight, tamagotchi.weight)
        XCTAssertEqual(expectedHunger, tamagotchi.hunger)
        XCTAssertEqual(expectedHappiness, tamagotchi.happiness)
    }
    
    func testWhenTamagotchiEatsASnackHungerIsDecreasedBy1WeightIncreasesBy2() {
        //arrange
        let expectedHunger = -1
        let expectedWeight = 1
        //act
        let tamagotchi = Tamagotchi()
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(expectedHunger, tamagotchi.hunger)
        XCTAssertEqual(expectedWeight, tamagotchi.weight)
    }
    
}
