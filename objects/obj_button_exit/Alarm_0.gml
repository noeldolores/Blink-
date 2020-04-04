/// @description Restart Protection Timer

if protection_timer >= 0 {
	protection_timer -= 1;
} else {
	alarm[0] = -1;
}