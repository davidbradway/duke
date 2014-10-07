*******************************************
* Scripts I wrote *
*******************************************
- addGIFFrame.m - used to create an animated GIF like a Matlab movie file
- figureScalingExample.m - code fragment for better bitmapped figures
- paths.m - used for better path management, put paths in here instead of scripts
- starup.m - used to get matlab stuff set up
- Others...

*******************************************
* Script Execution Notifier with Pushover *
*******************************************
  Simeon Wong
  2013 June 04

contents:
- cprintf.m
- gethostname.m
- license.txt
- notify.m
- run_notify.m

This script is designed to work with the Pushover mobile application.
If you don't have it, you can get it here: https://pushover.net/

Although it's designed for Pushover, it would be simple to modify it
to work with other APIs that take HTTP POST data (for SMS instead, for example).

After signing up for Pushover, create a new application and put the application's
API Token into the API_TOKEN variable in the pushover_parameters.mat file.
Put your user's User Token into the USER_TOKEN variable in the same file.

You can put a different pushover_parameters.mat files in the home directories of
different users on the same computer, so notifications can go to the right person.

