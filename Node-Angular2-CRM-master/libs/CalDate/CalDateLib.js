/**
 * Created by tgray on 4/5/2016.
 */
/* AddDays(StartDate,NumberDays,WeekMask,EndDate)
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
  ;
  for (CurDow = 1; CurDow <= 7; CurDow++) { /* go through mask counting work days */
//    if (substr(WMask, CurDow, 1) = 'Y') { /* if a weekday, count it*/
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
    WMask = WeekMask
  }
  ;

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
    break
  }
  ;
}
  endDate := Enddt;
  return endDate;
}
