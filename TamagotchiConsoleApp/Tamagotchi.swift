//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Jaume, Louis (NA) on 30/11/2022.
//

import Foundation

class Tamagotchi {
//attributes
    private var weight: Int
    private var hunger: Int
    private var happiness: Int
    private var age: Int
    private var training: Int
    private var droppingCount: Int
    
//constructor
    init() {
        self.weight = 0
        self.hunger = 5
        self.happiness = 0
        self.age = 0
        self.training = 0
        self.droppingCount = 0
    }
    
//weight methods
    func getWeight() -> Int {
        return self.weight
    }
    
    func setWeight(_ newWeight: Int) {
        if newWeight < 0 {
            self.weight = 0
        } else if newWeight > 10 {
            self.weight = 10
        } else {
            self.weight = newWeight
        }
    }
    
//hunger methods
    func getHunger() -> Int {
        return self.hunger
    }
    
    func setHunger(_ newHunger: Int) {
        if newHunger < 0 {
            self.hunger = 0
        } else if newHunger > 10 {
            self.hunger = 10
        } else {
            self.hunger = newHunger
        }
    }
    
//happiness methods
    func getHappiness() -> Int {
        return self.happiness
    }
    
    func setHappiness(_ newHappiness: Int) {
        if newHappiness < 0 {
            self.happiness = 0
        } else if newHappiness > 10 {
            self.happiness = 10
        } else {
            self.weight = newHappiness
        }
    }
    
//general methods
    func eatSnack() {
        setHunger(self.hunger - 1)
        setWeight(self.weight + 2)
    }
    
    func produceDropping() {
        self.droppingCount += 1
    }
    
    func growUp() {
        self.age
    }
    
}
