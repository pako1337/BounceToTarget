class Ball
    constructor: (@position, @size, @mass, @painter) ->
        throw "painter required" if not @painter?

root = exports ? this
root.Ball = Ball
