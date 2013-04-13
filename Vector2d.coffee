class Vector2d
    constructor: (@x, @y) ->

    equalsTo: (vector_2) ->
        return @x == vector_2.x and @y == vector_2.y

    add: (vector_2) ->
        return new Vector2d @x + vector_2.x, @y + vector_2.y
    
root = exports ? this
root.Vector2d = Vector2d
