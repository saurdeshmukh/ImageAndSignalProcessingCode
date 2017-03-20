function editBoxExample
%%% UPDATES THIS CODE AS WELL %%%%
% Creates a GUI with a text entry box and a display box.
h.fig = figure('Position',[500 500 260 70]);
h.textIn = uicontrol(h.fig,'Style','edit','Position',[20 35 220 25]);
h.textOut = uicontrol(h.fig,'Style','text','Position',[20 10 220 15]);
 
% Calls the function checkForReturn everytime a key is pressed in the responceBox
set(h.textIn,'KeyPressFcn',{@checkForReturn,h});
 
function checkForReturn(hObject,eventdata,h)
% Gets the last charactor
last_key_pressed = get(h.fig,'CurrentCharacter');
 
% If the last_key_pressed is return update the text box
% note that char)13) == Return key
if isequal(last_key_pressed,char(13))
 
% This is needed to updated the text stored in this text box
drawnow
 
% Gets the text iin the textobs and updates the responce box. Clears
% the text box at the end
answer = get(h.textIn,'String');
set(h.textOut,'String',answer);
set(h.textIn,'String','');
end