function eDtest
F.Units='characters'; 
F.Position=[40 20 60 28]; 
F.MenuBar='none'; 
A.Units='normalized'; 
A.Position=[0 0 1 1]; 
A.Color=[0 0 0]; 
T.HorizontalAlignment='center'; 
T.Color=[0 1 0]; 
T.Interpreter='none'; 
S=char('t'*ones(20,20)); 
hf=figure(F); 
ha=axes(A); 
hT=text(0.5,0.5,S,T); 
set(hf,'UserData',hT,'KeyPressFcn',@eDtestF);

function eDtestF(h,eD) 
hT=get(h,'UserData'); 
if ~isempty(eD.Character) 
    S=char(ones(20,20)*eD.Character); 
else
    S=''; 
end
set(hT,'String',S);
end
end
