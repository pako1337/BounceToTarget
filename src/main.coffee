require(["Vector2d", "Ball", "CirclePainter", "DrawEngine"], (doc) -> main())

main = ->
    canvas = document.getElementById("gameArea")
    canvas = canvas.getContext("2d")
    drawEngine = new DrawEngine canvas

    position = new Vector2d 100, 10
    size = new Vector2d 10, 10
    painter = new CirclePainter()
    ball = new Ball position, size, 100, painter

    drawEngine.addElement ball
    drawEngine.drawFrame()
