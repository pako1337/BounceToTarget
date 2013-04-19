gravityCalcExports = require("../src/GravityCalculator.coffee")
GravityCalculator = gravityCalcExports.GravityCalculator

describe 'GravityCalculator', ->
    gravCalc = undefined
    obj1 = new Object
    obj2 = new Object

    beforeEach ->
        gravCalc = new GravityCalculator
        obj1 = new Object
        obj2 = new Object

    it 'should return undefined if not given any parameters', ->
        gravityForce = gravCalc.calculateForce()
        expect(gravityForce).toEqual undefined

    it 'should return undefined if one parameter given', ->
        gravityForce = gravCalc.calculateForce obj1
        expect(gravityForce).toEqual undefined

    it 'should return undefined if both objects have no mass', ->
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual undefined

    it 'should return undefined when at lest one object have no position', ->
        obj1.mass = 1
        obj2.mass = 2
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual undefined

    it 'should return 0 if one object have mass of 0', ->
        obj1.mass = 0
        obj1.position = 0
        obj2.mass = 10
        obj2.position = 0
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual 0

    it 'should return 1 for mass 1 and distance 1', ->
        obj1.mass = 1
        obj2.mass = 1
        obj1.position = { x: 1, y: 0 }
        obj2.position = { x: 0, y: 0 }
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual 1

    it 'should return 25 for mass 5 and distance 1', ->
        obj1.mass = 5
        obj2.mass = 5
        obj1.position = { x: 1, y: 0 }
        obj2.position = { x: 0, y: 0 }
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual 25

    it 'should return 9 for mass 6 and distance 2', ->
        obj1.mass = 6
        obj2.mass = 6
        obj1.position = { x: 0, y: 0 }
        obj2.position = { x: 2, y: 0 }
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual 9
