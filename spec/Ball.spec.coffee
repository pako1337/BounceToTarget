exportsBall = require("../Ball.coffee")
exportsPoint = require("../Point.coffee")
Ball = exportsBall.Ball
Point = exportsPoint.Point

describe 'Ball', ->
    it 'should be created', ->
        ball = new Ball
        expect(ball).not.toBeNull()

    it 'should be created with initial position', ->
        ball = new Ball new Point 0, 0
        expect(ball.position.x).toEqual(0)
        expect(ball.position.y).toEqual(0)
