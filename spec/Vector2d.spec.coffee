exports = require("../Vector2d.coffee")
Vector2d = exports.Vector2d

describe 'Vector2d', ->
    it 'should be created', ->
        vector = new Vector2d
        expect(vector).not.toBeNull()

    it 'should be created with coordinates', ->
        vector = new Vector2d 1, 2
        expect(vector.x).toEqual(1)
        expect(vector.y).toEqual(2)
        
    it 'should be equal to other vector with the same coordinates', ->
        vector1 = new Vector2d 1, 2
        vector2 = new Vector2d 1, 2
        vectorsEquality = vector1.equalsTo vector2
        expect(vectorsEquality).toBe(true)
