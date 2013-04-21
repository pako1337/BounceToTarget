_drawEngineExports = require("../src/DrawEngine.coffee")
DrawEngine = _drawEngineExports.DrawEngine

describe 'DrawEngine', ->
    
    it 'should return undefined when constructed without canvas', ->
        expect(-> new DrawEngine).toThrow()
