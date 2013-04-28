class CirclePainter

    paint: (canvas, element, param) ->
        throw 'missing canvas to paint on' if not canvas?
        throw 'missing source element' if not element?
        canvas.fillStyle = param?.fillColor ? '#000'
        canvas.arc element.position.x, element.position.y, element.size.x / 2, 0, Math.PI * 2, true
        canvas.fill()

root = exports ? this
root.CirclePainter = CirclePainter
