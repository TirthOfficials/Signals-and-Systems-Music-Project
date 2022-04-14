// This GUI file is generated by guibuilder version 4.2.1
//////////

clear;
function  tone  = noteG( o,n,d)

 
if o == 1                         
    N = 2^(n/12);
elseif o == 2
        N = 2*2^(n/12);
    else N = 4*2^(n/12);
end
f = 130.815;
f1 = f*N;
t = 0:1/22050:d;
T = length(t);
T1 = round(0.02*T);
T2 = round(0.03*T);
T3 = round(0.78*T);
L1 = linspace(0,1,T1);
L2 = linspace(1,1,T2);
L3 = linspace(1,0.7,T2);
L4 = linspace(0.7, 0.35,T3);
L5 = linspace(0.35,0,T1);
a = [L1 L2 L3 L4 L5 ];
A = length(a);
if T > A then
    diff = T-A;
    for i = 1:diff
        a = [a 0];
    end
    
elseif T < A then
        diff = A-T;
        for i = 1:diff
            t = {t 0};
        end
     
        
end

S = sin((2*%pi*f1*t + a.*sin(4*%pi*f1*t) ));

tone = 0.25*a.*S;
endfunction
d1 = 0.3 ;

t = 0 : 1/22050:d1;
D11=0.2; 
t11 = 0 : 1/22050:D11;
SI = 0*t11;

//MID NOTES
C = noteG(2,0,d1);
C# = noteG(2,1,d1);
C! = noteG(2,0,2*d1);C!! = noteG(2,0,d1/2);
D = noteG(2,2,d1); D# = noteG(2,3,d1); E = noteG(2,4,d1); 
E! = noteG(2,2,2*d1); E!! = noteG(2,2,d1/2);
F = noteG(2,5,d1); F# = noteG(2,6,d1); G = noteG(2,7,d1); G# = noteG(2,8,d1); A = noteG(2,9,d1); A# = noteG(2,10,d1);
B = noteG(2,11,d1); 


//HIGH
C5 = noteG(3,0,d1);
C#5 = noteG(3,1,d1); C#5!! = noteG(3,1,d1/2);
C!5 = noteG(3,0,2*d1);C!!5 = noteG(3,0,d1/2);
D5 = noteG(3,2,d1); D!5 = noteG(3,2,2*d1); D5!! = noteG(3,2,d1/2); D#5 = noteG(3,3,d1); E5 = noteG(3,4,d1); 
E!5 = noteG(3,2,2*d1); E!!5 = noteG(3,2,d1/2);
F5 = noteG(3,5,d1); F#5 = noteG(3,6,d1); G5 = noteG(3,7,d1); G!5 = noteG(3,7,2*d1); G#5 = noteG(3,8,d1); A5 = noteG(3,9,d1); A#5 = noteG(3,10,d1);
B5 = noteG(3,11,d1); 

C6 = noteG(3,12,d1);
//LOW
C4 = noteG(1,0,d1);
C#4 = noteG(1,1,d1);
C!4 = noteG(1,0,2*d1);C!!4 = noteG(1,0,d1/2);
D4 = noteG(1,2,d1); D#4 = noteG(1,3,d1); E4 = noteG(1,4,d1); 
E!4 = noteG(1,2,2*d1); E!!4 = noteG(1,2,d1/2);
F4 = noteG(1,5,d1); F#4 = noteG(1,6,d1); G4 = noteG(1,7,d1); G#4 = noteG(1,8,d1); A4 = noteG(1,9,d1); A#4 = noteG(1,10,d1);
B4 = noteG(1,11,d1);
f=figure('figure_position',[400,50],'figure_size',[656,582],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////

handles.dummy = 0;
handles.Title=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1984375,0.9041667,0.5984375,0.0916667],'Relief','default','SliderStep',[0.01,0.1],'String','Signals & System Music Project','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Title','Callback','Title_callback(handles)')
handles.Sad=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2984375,0.7541667,0.4,0.0958333],'Relief','default','SliderStep',[0.01,0.1],'String','Sad Melody','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Sad','Callback','Sad_callback(handles)')
handles.Happy=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.296875,0.6020833,0.403125,0.0979167],'Relief','default','SliderStep',[0.01,0.1],'String','Happy Melody','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Happy','Callback','Happy_callback(handles)')
handles.Emotional=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2984375,0.4583333,0.4015625,0.0875],'Relief','default','SliderStep',[0.01,0.1],'String','Emotional Melody','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Emotional','Callback','Emotional_callback(handles)')
handles.Joyful=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.30375,0.3020833,0.3946875,0.0979167],'Relief','default','SliderStep',[0.01,0.1],'String','Joyful Melody','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Joyful','Callback','Joyful_callback(handles)')
handles.Pleasant=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.3,0.1458333,0.3984375,0.0958333],'Relief','default','SliderStep',[0.01,0.1],'String','Pleasant Melody','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pleasant','Callback','Pleasant_callback(handles)')


f.visible = "on";


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

function Title_callback(handles)
//Write your callback for  Title  here

endfunction


function Sad_callback(handles)
//Write your callback for  Sad  here
 array=[];
    for i=1:16 ;
        y=grand(1,1,"uin",1,14);
        if y == 1
            array=[array,C+E+G];
        elseif y == 2
            array=[array,D];
        elseif y == 3
            array=[array,D#];
        elseif y==4
            array=[array,F];
        elseif y==5
            array=[array,G];
        elseif y==6
            array=[array,G#];
        elseif y==7
            array=[array,A#];    
        elseif y == 8
            array=[array,C4+E4+G4];
        elseif y == 9
            array=[array,D4];
        elseif y == 10
            array=[array,D#4];
        elseif y==11
            array=[array,F4];
        elseif y==12
            array=[array,G4];
        elseif y==13
            array=[array,G#4];
        elseif y==14
            array=[array,A#4];
        
        
        end
end
playsnd(array);
endfunction


function Happy_callback(handles)
//Write your callback for  Happy  here
array2=[];
    for i=1:16 ;
        y=grand(1,1,"uin",1,14);
        if y == 1
            array2=[array2,G5+B5+D5];
        elseif y == 2
            array2=[array2,A5];
        elseif y == 3
            array2=[array2,B5];
        elseif y==4
            array2=[array2,C5];
        elseif y==5
            array2=[array2,D5];
        elseif y==6
            array2=[array2,E5];
        elseif y==7
            array2=[array2,F5];    
        elseif y == 8
            array2=[array2,F#5];
        elseif y == 9
            array2=[array2,C#5];
        elseif y == 10
            array2=[array2,G5+B5+D5];
        elseif y==11
            array2=[array2,A5];
        elseif y==12
            array2=[array2,B5];
        elseif y==13
            array2=[array2,C5];
        elseif y==14
            array2=[array2,D5];
        
        
        end
end
playsnd(array2);
endfunction


function Emotional_callback(handles)
//Write your callback for  Emotional  here
array4=[];
    for i=1:16 ;
        y=grand(1,1,"uin",1,14);
        if y == 1
            array4=[array4,E+G#+B];
        elseif y == 2
            array4=[array4,F#];
        elseif y == 3
            array4=[array4,G#];
        elseif y==4
            array4=[array4,A];
        elseif y==5
            array4=[array4,B];
        elseif y==6
            array4=[array4,C#];
        elseif y==7
            array4=[array4,D#];
        elseif y == 8
            array4=[array4,E4+G#4+B4];
        elseif y == 9
            array4=[array4,F#4];
        elseif y == 10
            array4=[array4,G#4];
        elseif y==11
            array4=[array4,A4];
        elseif y==12
            array4=[array4,B4];
        elseif y==13
            array4=[array4,C#4];
        elseif y==14
            array4=[array4,D#4];
        
        
    end
end
playsnd(array4);
endfunction


function Joyful_callback(handles)
//Write your callback for  Joyful  here
array3=[];
    for i=1:24   ;
        y=grand(1,1,"uin",1,14);
        if y == 1
            array3=[array3,D+F#+B];
        elseif y == 2
            array3=[array3,F#5];
        elseif y == 3
            array3=[array3,E!!5];
        elseif y==4
            array3=[array3,D5!!];
        elseif y==5
            array3=[array3,C#5!!];
        elseif y==6
            array3=[array3,D5];
        elseif y==7
            array3=[array3,C#5!!];
        elseif y == 8
            array3=[array3,E+G+B];
        elseif y == 9
            array3=[array3,C#5];
        elseif y == 10
            array3=[array3,D5];
        elseif y==11
            array3=[array3,A#5];
        elseif y==12
            array3=[array3,C#5];
        elseif y==13
            array3=[array3,F#5];
        elseif y==14
            array3=[array3,D5!!];
        
        
    end
end
playsnd(array3);
endfunction


function Pleasant_callback(handles)
//Write your callback for  Pleasant  here
array5=[];
    for i=1:16   ;
        y=grand(1,1,"uin",1,14);
        if y == 1
            array5=[array5,G#+C+G5];
        elseif y == 2
            array5=[array5,G];
        elseif y == 3
            array5=[array5,D#];
        elseif y==4
            array5=[array5,G+C+D#5];
        elseif y==5
            array5=[array5,G#];
        elseif y==6
            array5=[array5,F];
        elseif y==7
            array5=[array5,F+G#+D#5];
        elseif y == 8
            array5=[array5,D#];
        elseif y == 9
            array5=[array5,G#];
        elseif y == 10
            array5=[array5,G+A#+D5];
        elseif y==11
            array5=[array5,F];
        elseif y==12
            array5=[array5,G#];
        elseif y==13
            array5=[array5,G];
        elseif y==14
            array5=[array5,G+C+G#];
        
        
    end
end
playsnd(array5);
endfunction


