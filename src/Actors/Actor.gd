extends KinematicBody2D
class_name Actor

const FLOOR_NORMAL: Vector2 = Vector2.UP

# export keyword makes variable visible in inspector
export var gravity: float = 4000
export var speed: Vector2 = Vector2(300.0, 1000.0)

# the colon specifies the type, this can be infered from the initialization but I am being explicit here
var _velocity: Vector2 = Vector2.ZERO
