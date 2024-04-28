extends Sprite2D

var speed = 800
var rotation_speed= 2*PI
var angular_speed= PI
var velocity_rotation=0


func _process(delta):
	rotation +=  rotation_speed * delta
	velocity_rotation +=  angular_speed * delta
	var velocity = Vector2.UP.rotated(velocity_rotation) * speed
	position += velocity * delta


func _on_button_pressed():
	set_process(not is_processing())


func _ready():
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	visible = not visible
