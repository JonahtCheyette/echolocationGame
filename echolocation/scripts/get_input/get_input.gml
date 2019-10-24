rKey = max(keyboard_check(vk_right),keyboard_check(ord("D")),0);
lKey = max(keyboard_check(vk_left),keyboard_check(ord("A")),0);
uKey = max(keyboard_check(vk_up),keyboard_check(ord("W")),0);
dKey = max(keyboard_check(vk_down),keyboard_check(ord("S")),0);

xaxis = rKey - lKey;
yaxis = dKey - uKey;