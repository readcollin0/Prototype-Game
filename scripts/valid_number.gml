/// valid_number(str, allow_decimal)

var str = argument0;
var allow_decimal = argument1;

if (!is_string(str)) return false;
if (str == "") return false;

var periodUsed = !allow_decimal;
var length = string_length(str);

for (var i = 1; i <= length; i++) {
    var charOrd = string_ord_at(str, i);
    if (charOrd < ord('0') || charOrd > ord('9')) {
        if (charOrd == ord('.')) {
            if (!periodUsed) {
                periodUsed = true;
                continue;
            }
        }
        return false;
    }
}

return true;
