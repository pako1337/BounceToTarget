class DrawEngine
    constructor: (@canvas) ->
        throw "canvas required" if not @canvas?
        @elements = []

    elementsCount: ->
        return @elements.length

    addElement: (element) ->
        @elements.push element

    drawFrame: ->
        for elem in @elements
            elem.painter.paint @canvas, elem

root = exports ? this
root.DrawEngine = DrawEngine
