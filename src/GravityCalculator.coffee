_vectorExports = require('./Vector2d.coffee')
Vector2d = _vectorExports.Vector2d

class GravityCalculator
    calculateForce: (obj1, obj2) ->
        return undefined if not obj1? or not obj2?
        return undefined if not obj1.position? or not obj2.position?
        return 0 if obj1.mass == 0 or obj2.mass == 0

        x_distance = obj2.position.x - obj1.position.x
        x_distance *= x_distance
        y_distance = obj2.position.y - obj1.position.y
        y_distance *= y_distance
        distance_squared = x_distance + y_distance
        return obj1.mass * obj2.mass / distance_squared

    calculateGravity: (obj1, obj2) ->
        force = this.calculateForce obj1, obj2
        gravityVector = new Vector2d force, 0
        objectsVector = new Vector2d (obj2.position.x - obj1.position.x), (obj2.position.y - obj1.position.y)
        destinationAngle = objectsVector.angleToGlobalPlane()
        return gravityVector.rotate destinationAngle

root = exports ? this
root.GravityCalculator = GravityCalculator
