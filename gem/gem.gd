extends Area3D


func _on_body_entered(body):
	Game.gems +=1
	$SfxCoin.play()
	$AnimationPlayer.play("pick_up")
	await $AnimationPlayer.animation_finished
	self.queue_free()
