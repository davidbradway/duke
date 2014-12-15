%% Method 1, with Solarized theme defaults

% http://www.mikesoltys.com/2013/02/08/matlab-tip-change-the-color-scheme-to-be-easier-on-your-eyes/
%{
com.mathworks.services.Prefs.setBooleanPref('ColorsUseSystem',0);
com.mathworks.services.Prefs.setColorPref('ColorsBackground',java.awt.Color(7/255,54/255,66/255));
com.mathworks.services.Prefs.setColorPref('ColorsText',java.awt.Color(133/255,153/255,0/255));
com.mathworks.services.Prefs.setColorPref('Colors_M_Comments',java.awt.Color(181/255,137/255,0/255));
com.mathworks.services.Prefs.setColorPref('Colors_M_Keywords',java.awt.Color(38/255,139/255,210/255));
com.mathworks.services.Prefs.setColorPref('Colors_M_Strings',java.awt.Color(42/255,161/255,152/255));
%}

%% Method 2, with Monokai theme defaults

% https://github.com/scheckley/matlab-monokai
%{
!wget https://github.com/scheckley/matlab-monokai/archive/master.zip
unzip master.zip
!rm master.zip
%}

a=prefdir;
%eval(['!ls ' a])

open(fullfile(a,'matlab.prf')), clear a
% add these lines to the end
%{
ColorsUseSystem=Bfalse
ColorsBackground=C-14211038
ColorsText=C-460558
Colors_M_Comments=C-8355712
Colors_M_Keywords=C-10036753
Colors_M_Strings=C-1647756

Color_CmdWinWarnings=C-39936
ColorsMLintAutoFixBackground=C-7973573
Colors_HTML_HTMLLinks=C-16732805
Colors_M_SystemCommands=C-448910
Colors_M_Warnings=C-27648
Colors_M_Errors=C-65536
Colors_M_UnterminatedStrings=C-5111808
Colors_M_Keywords=C-10036753

Editor.VariableHighlighting.Color=C-6931898
Editor.NonlocalVariableHighlighting.TextColor=C-5471745
Editorhighlight-lines=C-11974594
Editorhighlight-lines=C-13553108
Editorhighlight-caret-row-boolean-color=C-2167080
%}

open(mfilename)
disp('paste the theme preferences at the end of matlab.prf')
