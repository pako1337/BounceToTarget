_drawEngineExports = require("../src/DrawEngine.coffee")
DrawEngine = _drawEngineExports.DrawEngine

describe 'DrawEngine', ->
    drawEngine = new DrawEngine new Object
    canvas = new Object
    element = new Object

    beforeEach ->
        drawEngine = new DrawEngine canvas
        element = { painter: paint: -> }
        
    it 'should return undefined when constructed without canvas', ->
        expect(-> new DrawEngine).toThrow()

    it 'should draw frame using Painters in elements', ->
        spyOn element.painter, 'paint'
        drawEngine.addElement element
        drawEngine.drawFrame()
        expect(element.painter.paint).toHaveBeenCalled()

    it 'should pass canvas and element as parameter to painter', ->
        spyOn element.painter, 'paint'
        drawEngine.addElement element
        drawEngine.drawFrame()
        expect(element.painter.paint).toHaveBeenCalledWith canvas, element

    it 'should call paint on all added elements', ->
        spyOn element.painter, 'paint'
        drawEngine.addElement element
        element2 = { painter: paint: -> }
        spyOn element2.painter, 'paint'
        drawEngine.addElement element2
        drawEngine.drawFrame()
        expect(element.painter.paint).toHaveBeenCalled()
        expect(element2.painter.paint).toHaveBeenCalled()

    it 'should have empty elements collection after creation', ->
        expect(drawEngine.elementsCount()).toEqual 0
