-- Laurence Prescott. 5-May-18.
create or replace function sysminute(p_os in integer := 0)
return date is  /**  Sart of minute. p_os is whole nr.  **/
begin return trunc(sysdate, 'MI') + (round(p_os) / 24 / 60); end;
/
create or replace function syshour(p_os in integer := 0)
return date is  /**  Sart of hour. p_os is whole nr.  **/
begin return trunc(sysdate, 'HH') + (round(p_os) / 24); end;
/
create or replace function sysday(p_os in integer := 0)
return date is  /**  Sart of day. p_os is whole nr.  **/
begin return trunc(sysdate) + round(p_os); end;
/
create or replace function sysweek(p_os in integer := 0)
return date is  /**  Sart of week. p_os is whole nr.  **/
begin return trunc(sysdate, 'IW') + (round(p_os) * 7); end;
/
create or replace function sysmonth(p_os in integer := 0)
return date is  /**  Sart of month. p_os is whole nr.  **/
begin return trunc(add_months(sysdate, round(p_os)), 'MM'); end;
/
create or replace function sysyear(p_os in integer := 0)
return date is  /**  Sart of year. p_os is whole nr.  **/
begin return trunc(add_months(sysdate, round(p_os) * 12), 'YYYY'); end;
/