A collection of six PL/SQL functions to use as shortcuts for "trunc(sysdate..." calls.

It contains six small functions that return a *DATE*.<br>
Each function accepts an optional *offset* parameter (a whole number defaulting to 0).
 - **SYSMINUTE**(p_os): Returns the start of the minute indicated by p_os.<br>
 - **SYSHOUR**(p_os):   Returns the start of the hour   indicated by p_os.<br>
 - **SYSDAY**(p_os):    Returns the start of the day    indicated by p_os.<br>
 - **SYSWEEK**(p_os):   Returns the start of the week   indicated by p_os.<br>
 - **SYSMONTH**(p_os):  Returns the start of the month  indicated by p_os.<br>
 - **SYSYEAR**(p_os):   Returns the start of the year   indicated by p_os.<br>

I use these functions extensively, especially during **development and data investigation**.

## Example usage:

```plsql
select sysday    start_of_today,       sysday(-1)  start_of_yesterday, sysday(1) start_of_tomorrow
     , sysweek   start_of_this_week,   sysweek(-1) start_of_last_week
     , sysmonth  start_of_this_month,  sysyear     start_of_this_year
     , sysminute start_of_this_minute, syshour     start_of_this_hour
  from dual;
```

## Installing and uninstalling:

Download and extract the zip file.<br>
Using SQL*Plus:<br>
  - To Install:   SQL>@install<br>
  - To uninstall: SQL>@uninstall<br>


## Author:

Laurence Prescott<br>
howdprescott@hotmail.com<br>
https://github.com/HowdPrescott/SYSDATES<br>

#
&nbsp;&nbsp;&nbsp;&nbsp;:smiling_imp:<br><br>
[![Donate](https://www.paypalobjects.com/en_AU/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=98KZQ5FSKWRTC&lc=AU&item_name=LobOverDBLink&item_number=LODB_1&currency_code=AUD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted)

#
