class Vector2d
    constructor: (@x, @y) ->

    equalsTo: (vector_2) ->
        return @x == vector_2.x and @y == vector_2.y

    add: (vector_2) ->
        return new Vector2d @x + vector_2.x, @y + vector_2.y

    rotate: (angle) ->
        sinA = Math.sin angle
        cosA = Math.cos angle
        x1 = @x * cosA - @y * sinA
        y1 = @x * sinA + @y * cosA
        return new Vector2d x1, y1
    
root = exports ? this
root.Vector2d = Vector2d
