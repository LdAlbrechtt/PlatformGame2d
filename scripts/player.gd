extends CharacterBody2D

@export var speed : float = 300.0
@export var jump_velocity : float = -400.0
@export var gravity : float = 980.0
@export var air_acceleration : float = 0.8  # Controle aéreo (0.1 = lento, 1.0 = instantâneo)
@export var air_speed_multiplier : float = 0.9  # Velocidade máxima no ar

@onready var animation := $Animation as AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Aplica gravidade
	if not is_on_floor():
		velocity.y += gravity * delta

	# Pulo
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = jump_velocity
		animation.play("jump")

	# Controle de movimento
	var direction := Input.get_axis("ui_left", "ui_right")
	
	if direction != 0:
		# Atualiza a direção do sprite (sem achatamento)
		animation.scale.x = sign(direction) * abs(animation.scale.x)
		
		if is_on_floor():
			# Movimento no chão (total controle)
			velocity.x = direction * speed
		else:
			# Movimento no ar - resposta rápida ao mudar de direção
			var target_speed = direction * speed * air_speed_multiplier
			velocity.x = lerp(velocity.x, target_speed, air_acceleration)
	else:
		# Desaceleração
		velocity.x = move_toward(velocity.x, 0, speed * delta * (10 if is_on_floor() else 5))

	# Controle de animações
	if not is_on_floor():
		animation.play("jump" if velocity.y < 0 else "fall")
	elif abs(velocity.x) > 10:
		animation.play("run")
	else:
		animation.play("idle")

	move_and_slide()
