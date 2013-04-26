class CirclePainter

    constructor: (param) ->
        @fillColor = param?.fillColor ? '#000'

    paint: (canvas, element) ->
        throw 'missing canvas to paint on' if not canvas?
        throw 'missing source element' if not element?

root = exports ? this
root.CirclePainter = CirclePainter
