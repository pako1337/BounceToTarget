exports = require("../src/Vector2d.coffee")
Vector2d = exports.Vector2d

describe 'Vector2d', ->
    vector = new Vector2d
    e = 0.001

    beforeEach ->
        vector = new Vector2d 1, 2

    it 'should be created', ->
        expect(vector).not.toBeNull()

    it 'should be created with coordinates', ->
        expect(vector.x).toBeCloseTo 1, e
        expect(vector.y).toBeCloseTo 2, e
        
    it 'should be equal to other vector with the same coordinates', ->
        vector2 = new Vector2d 1, 2
        vectorsEquality = vector.equalsTo vector2
        expect(vectorsEquality).toBe true

    it 'should add to second vector', ->
        vector2 = new Vector2d 2, 3
        resultVector = vector.add vector2
        expect(resultVector.x).toBeCloseTo 3, e
        expect(resultVector.y).toBeCloseTo 5, e

    it 'should return length of 1 for vector(1,0)', ->
        vector = new Vector2d 1, 0
        expect(vector.length()).toBeCloseTo 1, e

    it 'should return length of 5 for vector(4,3)', ->
        vector = new Vector2d 4, 3
        expect(vector.length()).toBeCloseTo 5, e

    it 'should return vector(1, 0) for 90 degrees rotation', ->
        vector = new Vector2d 1, 0
        resultVector = vector.rotate Math.PI / 2
        expect(resultVector.x).toBeCloseTo 0, e
        expect(resultVector.y).toBeCloseTo 1, e

    it 'should return vector(-1.45, 3.78) for 80 degrees rotation', ->
        vector = new Vector2d 3, 2
        resultVector = vector.rotate (80 * Math.PI / 180)
        expect(resultVector.x).toBeCloseTo -1.45, e
        expect(resultVector.y).toBeCloseTo 3.78, e

    it 'should return dot product of 6 for vectors (1,2) and (2,2)', ->
        vector2 = new Vector2d 2, 2
        dotProduct = vector.dotProduct vector2
        expect(dotProduct).toBeCloseTo 6, e

    it 'should return angle PI/4 as angle to global plane for vector(1,1)', ->
        vector = new Vector2d 1, 1
        expect(vector.angleToGlobalPlane()).toBeCloseTo (Math.PI / 4), e

    it 'should return vector(1, 0) when rotating -PI/2 vector(0,1)', ->
        vector = new Vector2d 0, 1
        resultVector = vector.rotate -Math.PI / 2
        expect(resultVector.x).toBeCloseTo 1, e
        expect(resultVector.y).toBeCloseTo 0, e
