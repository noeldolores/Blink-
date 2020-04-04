/// @description Round Timer

if round_timer >= 0 {
	round_timer -= 1;
} else {
	alarm[1] = -1;
}