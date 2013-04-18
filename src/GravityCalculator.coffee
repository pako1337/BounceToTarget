class GravityCalculator
    calculateForce: (obj1, obj2) ->
        return undefined if not obj1? or not obj2?
        return undefined if not obj1.position? or not obj2.position?
        0

root = exports ? this
root.GravityCalculator = GravityCalculator
