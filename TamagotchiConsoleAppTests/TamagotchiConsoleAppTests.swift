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
        //act
        let tamagotchi = Tamagotchi()
        //assert
        XCTAssertEqual(tamagotchi.getWeight(), 0)
        XCTAssertEqual(tamagotchi.getHunger(), 5)
        XCTAssertEqual(tamagotchi.getHappiness(), 0)
    }
    
    func testWhenTamagotchiEatsASnackHungerIsDecreasedBy1WeightIncreasesBy2() {
        //arrange
        //act
        let tamagotchi = Tamagotchi()
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(tamagotchi.getHunger(), 4)
        XCTAssertEqual(tamagotchi.getWeight(), 2)
    }
    
}
