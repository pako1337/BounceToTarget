exports = require("../Point.coffee")
Point = exports.Point

describe 'Point', ->
    it 'should be created', ->
        point = new Point
        expect(point).not.toBeNull()

    it 'should be created with coordinates', ->
        point = new Point 1, 2
        expect(point.x).toEqual(1)
        expect(point.y).toEqual(2)
