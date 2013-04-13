exportsBall = require("../Ball.coffee")
exportsVector2d = require("../Vector2d.coffee")
Ball = exportsBall.Ball
Vector2d = exportsVector2d.Vector2d

describe 'Ball', ->
    it 'should be created', ->
        ball = new Ball
        expect(ball).not.toBeNull()

    it 'should be created with initial position', ->
        ball = new Ball new Vector2d(1, 2)
        expect(ball.position.x).toEqual(1)
        expect(ball.position.y).toEqual(2)

    it 'should be created with initial size', ->
        ball = new Ball new Vector2d(0, 0), 5
        expect(ball.size).toEqual(5)

    it 'should have mass', ->
        ball = new Ball new Vector2d(0, 0), 0, 5
        expect(ball.mass).toEqual(5)
