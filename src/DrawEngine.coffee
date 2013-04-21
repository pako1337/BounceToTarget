class DrawEngine
    constructor: (@canvas) ->
        throw "canvas required" if not @canvas?

root = exports ? this
root.DrawEngine = DrawEngine
