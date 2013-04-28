_circlePainterExpotrs = require("../src/CirclePainter.coffee")
CirclePainter = _circlePainterExpotrs.CirclePainter

describe 'CirclePainter', ->
    circlePainter = new CirclePainter
    element = new Object
    canvas = new Object

    beforeEach ->
        circlePainter = new CirclePainter
        element =
            position:
                x: 100
                y: 200
            size:
                x: 10
                y: 10
        canvas =
            arc: ->
            fill: ->
            stroke: ->
            fillStyle: undefined

    it 'should be created', ->
        expect(circlePainter).not.toBeNull()

    it 'should have paint method defined', ->
        expect(circlePainter.paint).toBeDefined()

    it 'should throw when canvas is not defined as parameter in paint method', ->
        expect(-> circlePainter.paint()).toThrow()

    it 'should throw when source element not defined as parameter in paint method', ->
        expect(-> circlePainter.paint new Object).toThrow()

    it 'should have default fill color #000', ->
        circlePainter.paint canvas, element
        expect(canvas.fillStyle).toEqual '#000'

    it 'should paint circle on canvas', ->
        spyOn canvas, 'arc'
        spyOn canvas, 'fill'
        circlePainter.paint canvas, element
        expect(canvas.arc).toHaveBeenCalledWith 100, 200, 5, 0, Math.PI * 2, true
        expect(canvas.fill).toHaveBeenCalled()

    it 'should set fill color before filling space', ->
        spyOn canvas, 'fill'
        circlePainter.paint canvas, element, { fillColor: '#123456' }
        expect(canvas.fill).toHaveBeenCalled()
        expect(canvas.fillStyle).toEqual '#123456'
