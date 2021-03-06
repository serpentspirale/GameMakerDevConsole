///console_overlay_drawing(Boolean);
//This script set the state of the overlay you can see on debuged instances:

//Failsafe
if(!__spse_failsafe(argument_count, 1, 1)) exit;

if is_string(argument0){
    switch(string_lower(string_letters(argument0))){
        case "true":
            Overlay_drawing = true;
            break;
        case "false":
            Overlay_drawing = false;
            break;
        default:
            __spse_logs_update("Failed to change overlay drawing state","red");
            break;
        }
    }
else{
    if is_bool(argument0){
        Overlay_drawing = argument0;
        }
    else{
        __spse_logs_update("Failed to change overlay drawing state","red");
        }
    }
    
//Give some feedback
__spse_logs_update("Drawing overlay state set to: " + string(Overlay_drawing), "white"); 
    


