exports = require("../src/Vector2d.coffee")
Vector2d = exports.Vector2d

describe 'Vector2d', ->
    vector = new Vector2d

    beforeEach ->
        vector = new Vector2d 1, 2

    it 'should be created', ->
        expect(vector).not.toBeNull

    it 'should be created with coordinates', ->
        expect(vector.x).toEqual 1
        expect(vector.y).toEqual 2
        
    it 'should be equal to other vector with the same coordinates', ->
        vector2 = new Vector2d 1, 2
        vectorsEquality = vector.equalsTo vector2
        expect(vectorsEquality).toBe true

    it 'should add to second vector', ->
        vector2 = new Vector2d 2, 3
        resultVector = vector.add vector2
        expect(resultVector.x).toEqual 3
        expect(resultVector.y).toEqual 5

    it 'should return vector(1, 0) for 90 degrees rotation', ->
        vector = new Vector2d 1, 0
        e = 0.001
        resultVector = vector.rotate Math.PI / 2
        expect(resultVector.x).toBeCloseTo 0, e
        expect(resultVector.y).toBeCloseTo 1, e

    it 'should return vector(-1.45, 3.78) for 80 degrees rotation', ->
        vector = new Vector2d 3, 2
        e = 0.001
        resultVector = vector.rotate (80 * Math.PI / 180)
        expect(resultVector.x).toBeCloseTo -1.45, e
        expect(resultVector.y).toBeCloseTo 3.78, e
