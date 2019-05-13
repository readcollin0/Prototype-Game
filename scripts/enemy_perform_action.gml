///enemy_perform_action(action)

var curAction = argument0;
var complete;
switch (curAction[0]) {
    case 1: {
        complete = enemy_move(curAction[1], curAction[2], curAction[3] / room_speed);
        break;
    }
    case 2: {
        complete = enemy_wait(curAction[1]);
        break;
    }
    case 3: {
        complete = enemy_look(curAction[1]);
        break;
    }
}

return complete;
