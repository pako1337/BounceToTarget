gravityCalcExports = require("../src/GravityCalculator.coffee")
GravityCalculator = gravityCalcExports.GravityCalculator

describe 'GravityCalculator', ->
    gravCalc = undefined

    beforeEach ->
        gravCalc = new GravityCalculator

    it 'should return undefined if not given any parameters', ->
        gravityForce = gravCalc.calculateForce()
        expect(gravityForce).toEqual undefined

    it 'should return undefined if one parameter given', ->
        obj1 = new Object
        gravityForce = gravCalc.calculateForce obj1
        expect(gravityForce).toEqual undefined

    it 'should return undefined if both objects have no mass', ->
        obj1 = new Object
        obj2 = new Object
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual undefined

    it 'should return undefined when at lest one object have no position', ->
        obj1 = new Object
        obj2 = new Object
        obj1.mass = 1
        obj2.mass = 2
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual undefined

    it 'should return 0 if one object have mass of 0', ->
        obj1 = new Object
        obj2 = new Object
        obj1.mass = 0
        obj1.position = 0
        obj2.mass = 10
        obj2.position = 0
        gravityForce = gravCalc.calculateForce obj1, obj2
        expect(gravityForce).toEqual 0
