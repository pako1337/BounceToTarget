exportsBall = require("../src/Ball.coffee")
exportsVector2d = require("../src/Vector2d.coffee")
Ball = exportsBall.Ball
Vector2d = exportsVector2d.Vector2d

describe 'Ball', ->
    ball = new Object

    beforeEach ->
        ball = new Ball new Vector2d(1, 2), 5, 5, new Object
    it 'should be created', ->
        expect(ball).not.toBeNull()

    it 'should be created with initial position', ->
        expect(ball.position.x).toEqual(1)
        expect(ball.position.y).toEqual(2)

    it 'should be created with initial size', ->
        expect(ball.size).toEqual(5)

    it 'should have mass', ->
        expect(ball.mass).toEqual(5)

    it 'should throw when painter not provided in constructor', ->
        ball = -> new Ball new Vector2d(0, 0), new Vector2d(0, 0), 5
        expect(ball).toThrow()
