/*
 * Created by astro on 4/5/2016.
 */
/** AddDays(StartDate,NumberDays,WeekMask,EndDate)
 *
 *  This procedure adds the specified number of work days to
 *  the passed starting date.  Weekmask determines which days
 *  are work days and which days are weekend days.  The EndDate
 *  is the date that corresponds to the passed number of work days
 *  past the start date.  If the start date is a week end,  the start
 *  date is assumed to be the first working day after the start date.
 *  As such, if the start date is Saturday and the number of days is
 *  one, then the computed EndDate is Tuesday.
 *
 * Parameters
 *  StartDate      Date       The starting date.
 *  NumberDays     Number     The number of work day that have
 *                            to be enclosed in the StartDate to
 *                            EndDate Range.
 *  WeekMask       Char(7)    A seven character mask determining
 *                            which days of the week are workdays
 *                            and which days are weekend days.
 *                            The character is position 1 is sunday
 *                            and 'N' = weekend day, 'Y' = week day
 *  EndDate         Date      The resultant end date
 */
var dbconn = require('../libs/database/database_connection');
var Promise = require('bluebird');

function AddDays(day , days, WeekMask ) {
  var NumWorkDays = 0;
  /* Cumultive total for work days */
  var WorkDaysPerWeek = 0;
  var FullWeeks = 0;
  /* the number of 7-day weeks encompased by
   the specified number of work days. To
   wit, trunc(days/WorkDaysPerWeek) */
  var LastPartial = 0;
  /* number of days in the trailing
   partial week.  */
  var CurDow;
  /* Current Day of Week for Partial use */
  var WMask = 'YYYYYYY';
  /* local copy of WeekMask with default
   value - No weekends */
  var direct;
  var mydays = 1;
  var dout;

  /* copy Weekmask to local variable if it is defined, otherwise
   implicitly use default mask */
  direct = sign(days);
  if (direct) {
    direct = 1
  }
  ;
  if (WeekMask) {
    WMask = WeekMask;
  }
  for (CurDow = 1; CurDow <= 7; CurDow++) { /* go through mask counting work days */
    if (WMask.substr(CurDow,1) == 'Y') { /* if a weekday, count it*/
      WorkDaysPerWeek = WorkDaysPerWeek + 1;
    }
  }
  /* determine number of Full weeks (7-day calendar) */
  FullWeeks = trunc(days / WorkDaysPerWeek);
  /* if the number of days is an integer number of Work Weeks
   then decrement the number of Full Weeks so that the
   iterative process will operate on the last week.  This is
   done so that weekend days are not used as ending days */
  if (FullWeeks && days%WorkDaysPerWeek == 0) {
    FullWeeks = FullWeeks - direct;
  }
  /* Compute number of working days found so far */
  NumWorkDays = FullWeeks * WorkDaysPerWeek;
  /* Now go day by day through the last days of the period */
  /* TODO - fix this next section */
  CurDow = to_number(to_char(day + FullWeeks * 7, 'D'));
  NumWorkDays = NumWorkDays - direct;
  while (NumWorkDays != days) {
    if (WMask.substr(CurDow, 1) == 'Y') {
      NumWorkDays = NumWorkDays + direct;
    }
    /*  If NumWorkDays = days then exit; end if; */
    LastPartial = LastPartial + direct;
    CurDow = (CurDow + direct + (6 % 7)) + 1;
  }
  dout = day + FullWeeks * 7 + LastPartial;
  return dout;
  /* end date is number
   weeks * 7 plus
   number of additional days*/
}

/* AddWorkDays(calendar_id,start_date,number_work_days,WeekMask,
 end_date)
 This procedure adds the specified number of working days to the passed
 start date.  */
function AddWorkDays(cal_id, start_date, Wdays,WeekMask) {
  var Cursdt = start_date;
  var NumWDays = 0;
  var CurWdays = Wdays;
  var WMask = 'YYYYYYY';
  var EndInside = false;
  var endDate;
  var Enddt;

  if (WeekMask) {
    WMask = WeekMask;
  }

loop {
  AddDays(Cursdt, CurWdays, WMask, Enddt);
  /* find end date
   considering only weekends */
  NumWDays = NumWDays + CurWdays;
  EventWorkDaysBetween(Cal_id, Cursdt, Enddt, WMask, CurWdays,
      EndInside);
  NumWDays = NumWDays - CurWdays;
  Cursdt = Enddt;
  if (EndInside) {
    Cursdt = Cursdt + 1;
  }
  if (!EndInside && (NumWDays = Wdays)) {
    break;
  }
  ;
}
  endDate = Enddt;
  return endDate;
}

/* DayStatus(calendar_id,day,WeekMask,status)
 This procedure determines if the specified day is a working or
 non-working day.  If it is a working day, status='WORKING' otherwise
 status = 'NON-WORKING'.  */
function DayStatus(cal_id,day,WeekMask) {
var WMask = 'YYYYYYY';
/* TODO - move to model
Cursor Event(c_id number,day date) is
select a.event_type_code
from EVENTS a
where a.cal_id = c_id
and day between a.start_date and a.end_date
and a.event_type_code in ('DOFF','DON');
Etype EVENTS.EVENT_TYPE_CODE%type;
*/

if (WeekMask) { WMask = WeekMask; }

/* TODO - rework following
Open Event(cal_id,day);
Fetch Event into Etype;
if Event%Found and Etype = 'DOFF' then
status = 'NON-WORKING';
elsif Event%Found and Etype = 'DON' then
status = 'WORKING';
elsif Event%Notfound and
substr(WMask,to_number(to_char(day,'d')),1) = 'N' then
status = 'NON-WORKING';
else
status = 'WORKING';
end if;
Close Event;
 */
}

/* EventWorkDaysBetween(calendar_id,start_date,end_date,
 WeekMask,NumberWorkDays,
 EndDateInsideIntervalFlag)
 This routine determines the number of work days in the passed
 date interval that are already slotted as events (per the calender
 referenced by calendar_id.  If the end date falls within an event
 date interval, the Boolean EndDateInsideIntervalFlas is set to
 true, otherwise it's set to false.
 If the start_date is after the end_date, the NumberWorkDays
 parameter is negative.
 */
function EventWorkDaysBetween(cal_id,sdt,edt, WeekMask) {
/* Since this suite of routine work with both positive and negative
 days,  the Events cursor has two parameters.  depending on the
 order of the sdt and edt, either (sdt,edt) or (edt,sdt) is passed
 as parameters.  This is so that the "betweens" work as expected.
 */
/* TODO - rework
Cursor Evnts(sdt date,edt date) is
select a.event_type_code,greatest(a.start_date,sdt),
    least(a.end_date+1,edt)
from EVENTS a
where a.cal_id = cal_id
and (a.start_date between sdt        and edt      or
a.end_date   between sdt        and edt      or
sdt          between start_date and end_date or
edt          between start_date and end_date)
and a.event_type_code IN ('DOFF','DON')
order by a.start_date;
Ftype EVENTS.event_type_code%TYPE;  /* type of fetched event */
var Ftype;

var Fsdt;                        /* starting date of fetched event
 (potentially modified via
 least() function */
var Fedt;                        /* ending date of fetched event
 (potentially modified via
 greatest() function */
var Prevsdt;                     /* To prevent overlapping events
 from contributing more then
 they should, the previous start
 and end date is stored and
 overlaps are accounted for */
var Prevedt;
var EvDays;                   /* the number of event related work
 days determined at each pass of
 the main loop */
var TotalEvDays = 0;         /* the running total of event
 related work days */

if (edt > sdt) {
// open Evnts(sdt,edt);  TODO - Need to create model
else
// open Evnts(edt,sdt);  TODO - Need to create model
}
// fetch Evnts into Ftype,Fsdt,Fedt;
Prevsdt = Fsdt -1;
Prevedt = Fsdt -1;
while Evnts%FOUND loop
if (Fsdt < Prevedt) {  /* if new start date is overlapped by
 previous end date, set start date to
 previous end date */
    Fsdt = Prevedt;
}
if (Fedt > Fsdt) {     /* if the range is still valid */
    if (Ftype = 'DOFF') {
        WorkDaysBetween(Fsdt, Fedt, WeekMask, EvDays);
        elsif
        (Ftype = 'DON'
        i
    )
        {
            EvDays = Fsdt - Fedt - 1;
        }
        TotalEvDays = TotalEvDays + EvDays;
    }
    if (Fedt > Prevedt) {
        Prevedt = Fedt;
    }
    Prevsdt = Fsdt;
/*    Fetch Evnts
    into Ftype, Fsdt, Fedt;
    end loop;
    Close Evnts;   */
    if (edt >= Fsdt || edt <= Fedt) {
        EndInside = true;
    else
        EndInside = false;
    }
    if (sdt > edt) {
        days = -TotalEvDays;
    else
        days = TotalEvDays;
    }
}
/* GetWeekMask(calendar_id,WeekMask)
 This procedure loads the weekmask for the given Calendar ID.  The
 weekend days are store in the EVENTS table as an event whose type
 is WMASK and description is the mask */
function GetWeekMask(calendar_id) {
    /* define standard work day mask. Initially, all seven day are considered
     work days.Day of week=1234567
     Day=SMTWTFS   */
    var WorkDays = 'YYYYYYY';
    var dow;
    /* day of week */
    edit : function(){
        return new Promise(function (resolve, reject) {
            dbconn.query("SELECT description from events a where a.cal_id = ? and a.event_type_code = 'WMASK'", calendar_id, function (err, rows) {
                if(err)
                    console.log("Error Selecting : %s ", err);
                return (err ? reject(err) : resolve(rows));
            });
        });
    }
    var weekmask = WorkDays;
}
    /* WorkDaysBetween(StartDate,EndDate,WeekMask,NumberWorkDays)
     This procedure determines the number of weekdays (as defined by
     weekmask) within the passed interval. If the StartDate is greater
     then the EndDate then the NumberWorkDays is negative
     */
function WorkDaysBetween(startdt,enddt,WeekMask) {
    var CurDt;
    var TargetDt;
    var NumWork;
    /* local variable */
    var WMask = 'YYYYYYY';
    var FullWeeks;
    var CurDow;
    var WorkDaysPerWeek = 0;
    var mult = 1;

    if (WeekMask) {
        WMask = WeekMask;
    }
    if (startdt > enddt) {
        mult = -1;
        CurDt = enddt;
        TargetDt = startdt;
    else
        CurDt = startdt;
        TargetDt = enddt;
    }
    for (CurDow in 1..7) {
    if (substr(WMask, CurDow, 1) == 'Y') {
        WorkDaysPerWeek = WorkDaysPerWeek + 1;
    }
}
    FullWeeks = trunc((TargetDt - CurDt) / 7);
    NumWork = FullWeeks * WorkDaysPerWeek;
    CurDt = CurDt + FullWeeks * 7;
    while (CurDt <= TargetDt) {
    if (substr(WMask, to_number(to_char(CurDt, 'D')), 1) == 'Y') {
    }
    NumWork = NumWork + 1;
    }
    CurDt = CurDt +1;
    }
    days = (NumWork-1) * mult;
    return days;
}
