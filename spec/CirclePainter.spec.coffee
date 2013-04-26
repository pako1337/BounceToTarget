_circlePainterExpotrs = require("../src/CirclePainter.coffee")
CirclePainter = _circlePainterExpotrs.CirclePainter

describe 'CirclePainter', ->
    circlePainter = new CirclePainter

    beforeEach ->
        circlePainter = new CirclePainter

    it 'should be created', ->
        expect(circlePainter).not.toBeNull()

    it 'should have default fill color black', ->
        expect(circlePainter.fillColor).toEqual '#000'

    it 'should accept fill color from parameters object', ->
        circlePainter = new CirclePainter { fillColor: '#123456' }
        expect(circlePainter.fillColor).toEqual '#123456'

    it 'should have paint method defined', ->
        expect(circlePainter.paint).toBeDefined()

    it 'should throw when canvas is not defined as parameter in paint method', ->
        expect(-> circlePainter.paint()).toThrow()

    it 'should throw when source element not defined as parameter in paint method', ->
        expect(-> circlePainter.paint new Object).toThrow()
