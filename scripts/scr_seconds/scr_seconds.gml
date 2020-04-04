///This script is called when you want to assign a timer or variable to a specific number of seconds.
///Example: You want a projectile to chill an enemey for 2 seconds. slow_proj = scr_seconds(2). This way, if we change the room_speed, it will always be 2 seconds.

/// @function scr_seconds(time);
/// @description Converts a number to seconds
/// @param {real} time The number of seconds to return.



//Assign wanted time to variable
var seconds = argument[0];

//Multiply by room speed so that no matter what the final setting is, the time will be consistent
var time = seconds * room_speed;

return time;