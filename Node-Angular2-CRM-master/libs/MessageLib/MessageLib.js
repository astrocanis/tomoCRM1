<<<<<<< HEAD
/**
 * Created by tgray on 4/11/16.
 */
function SubstituteParameters(str, params) {
    /* This procedure is used by procedure getMessageText */
    /* Examples at end */
    const ParamDel = '%';
    const NullStringReplacement = '(null)';
    var ParamNum;
    var PLeft;
    var PRight = 1;
    var RepLeft;
    var RepRight;
    var ReplacementString;

    /* loop while parameter substitution entries exist in str */
    while (PRight < LENGTH(str)) {

        /* TODO - Rework this entire section */
    << reloop >> /* Since no continue function (as in C), have to goto here */
        /* find location of left parameter delimiter of the next parameter sub */
    PLeft = instr(str, ParamDel, PRight);
    /* if no more found in string,  exit loop  */
    if PLeft = 0 then
    exit;
    end if;
    /* if the character immediately following the parameter delimiter is not
     a valid number or valid character for a variable, assume that it is
     an unadorned % sign and should be skipped (IE: '100% ') */
    if instr('01234567890abcdefghijklmnopqrstuvwxyz',
        lower(substr(str, PLeft + 1, 1))) = 0 then
    PRight := PLeft + 1;
    /* set right to be 1 past character */
    goto reloop;
    /* go back to head of loop (continue) */
    end
    if;
    /* find right (closing) parameter delimiter */
    PRight := instr(str, ParamDel, PLeft + 1);
    /* if there isn't one, assume unadorned % sign (IE '.... 50%') */
    if PRight = 0 then
    exit;
    end
    if;
    /* use TO_NUMBER to extract parameter number. IF not number, EXCEPTION
     will be used to handle the NAME_IN type parameter */
    ParamNum := to_number(substr(str, PLeft + 1, PRight - PLeft - 1));
    /* find left location of parameter in parameter string  */
    RepLeft := instr(params, ParamDel, 1, ParamNum - 1);
    /* if 0 returned, this means that there is not sufficient parameters
     defined in the params string */
    if RepLeft = 0 then
    RepLeft := LENGTH(str);
    end
    if;
    /* if 1 returned, this means ParamNum = 1 and dealing with first param */
    if RepLeft = 1 then
    RepLeft := RepLeft - 1;
    end
    if;
    /* find right right location of parameter in parameter string */
    RepRight := instr(params, ParamDel, 1, ParamNum);
    /* if 0 returned, this means there are no more parameter delimiter in
     parameter string and the rest of the string is for the given param */
    if RepRight = 0
        then
    RepRight := LENGTH(str) + 1;
    end
    if;
    /* extract Replacement string from parameter string. If zero length,
     the predefine NullStringReplacement will be used (later) */
    ReplacementString:= substr(params, RepLeft + 1, RepRight - RepLeft - 1);
    EXCEPTION
    /* if parameter string not all number */
    WHEN
    VALUE_ERROR
    THEN
    /* using NAME_IN, get value stored in indicated system variable */
    ReplacementString:= NAME_IN(substr(str, PLeft + 1, PRight - PLeft - 1));
    END;
    /* replace parameter position with replacement string */
    str := replace(str, substr(str, PLeft, PRight - PLeft + 1),
        NVL(ReplacementString, NullStringReplacement));
    /* determine location of character immediately to right of replacement
     string */
    PRight := PLeft + Length(ReplacementString) + 1;
    end
    loop;
    end;
    end;
    /* EXAMPLES:
     Passed In: str    = 'No records exist in %1% for group %2%'
     params = 'PP_PRODUCTS%MER11'
     Results  : str    = 'No records exist in PP_PRODUCTS for group MER11'
     Passed In: str    = 'Warranty flag=%system.cursor_value%, must be Y or N'
     params = (null)
     system.cursor_value = 'T'
     Results  : str    = 'Warranty flag=T, must be Y or N'
     Passed In: str    = '%1% is %2%% specified, must be 100% specified'
     params = 'BOM%70'
     Results  : str    = 'BOM is 70% specified, must be 100% specified'
     */
}
=======
/**
 * Created by tgray on 4/11/16.
 */
function SubstituteParameters(str, params) {
    /* This procedure is used by procedure getMessageText */
    /* Examples at end */
    const ParamDel = '%';
    const NullStringReplacement = '(null)';
    var ParamNum;
    var PLeft;
    var PRight = 1;
    var RepLeft;
    var RepRight;
    var ReplacementString;

    /* loop while parameter substitution entries exist in str */
    while (PRight < LENGTH(str)) {

        /* TODO - Rework this entire section */
    << reloop >> /* Since no continue function (as in C), have to goto here */
        /* find location of left parameter delimiter of the next parameter sub */
    PLeft = instr(str, ParamDel, PRight);
    /* if no more found in string,  exit loop  */
    if PLeft = 0 then
    exit;
    end if;
    /* if the character immediately following the parameter delimiter is not
     a valid number or valid character for a variable, assume that it is
     an unadorned % sign and should be skipped (IE: '100% ') */
    if instr('01234567890abcdefghijklmnopqrstuvwxyz',
        lower(substr(str, PLeft + 1, 1))) = 0 then
    PRight := PLeft + 1;
    /* set right to be 1 past character */
    goto reloop;
    /* go back to head of loop (continue) */
    end
    if;
    /* find right (closing) parameter delimiter */
    PRight := instr(str, ParamDel, PLeft + 1);
    /* if there isn't one, assume unadorned % sign (IE '.... 50%') */
    if PRight = 0 then
    exit;
    end
    if;
    /* use TO_NUMBER to extract parameter number. IF not number, EXCEPTION
     will be used to handle the NAME_IN type parameter */
    ParamNum := to_number(substr(str, PLeft + 1, PRight - PLeft - 1));
    /* find left location of parameter in parameter string  */
    RepLeft := instr(params, ParamDel, 1, ParamNum - 1);
    /* if 0 returned, this means that there is not sufficient parameters
     defined in the params string */
    if RepLeft = 0 then
    RepLeft := LENGTH(str);
    end
    if;
    /* if 1 returned, this means ParamNum = 1 and dealing with first param */
    if RepLeft = 1 then
    RepLeft := RepLeft - 1;
    end
    if;
    /* find right right location of parameter in parameter string */
    RepRight := instr(params, ParamDel, 1, ParamNum);
    /* if 0 returned, this means there are no more parameter delimiter in
     parameter string and the rest of the string is for the given param */
    if RepRight = 0
        then
    RepRight := LENGTH(str) + 1;
    end
    if;
    /* extract Replacement string from parameter string. If zero length,
     the predefine NullStringReplacement will be used (later) */
    ReplacementString:= substr(params, RepLeft + 1, RepRight - RepLeft - 1);
    EXCEPTION
    /* if parameter string not all number */
    WHEN
    VALUE_ERROR
    THEN
    /* using NAME_IN, get value stored in indicated system variable */
    ReplacementString:= NAME_IN(substr(str, PLeft + 1, PRight - PLeft - 1));
    END;
    /* replace parameter position with replacement string */
    str := replace(str, substr(str, PLeft, PRight - PLeft + 1),
        NVL(ReplacementString, NullStringReplacement));
    /* determine location of character immediately to right of replacement
     string */
    PRight := PLeft + Length(ReplacementString) + 1;
    end
    loop;
    end;
    end;
    /* EXAMPLES:
     Passed In: str    = 'No records exist in %1% for group %2%'
     params = 'PP_PRODUCTS%MER11'
     Results  : str    = 'No records exist in PP_PRODUCTS for group MER11'
     Passed In: str    = 'Warranty flag=%system.cursor_value%, must be Y or N'
     params = (null)
     system.cursor_value = 'T'
     Results  : str    = 'Warranty flag=T, must be Y or N'
     Passed In: str    = '%1% is %2%% specified, must be 100% specified'
     params = 'BOM%70'
     Results  : str    = 'BOM is 70% specified, must be 100% specified'
     */
}
>>>>>>> 69dc486... Auto stash for cherrypick of "More small changes"
