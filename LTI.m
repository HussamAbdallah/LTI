function varargout = Tryin(varargin)
% TRYIN MATLAB code for Tryin.fig
%      TRYIN, by itself, creates a new TRYIN or raises the existing
%      singleton*.
%
%      H = TRYIN returns the handle to a new TRYIN or the handle to
%      the existing singleton*.
%
%      TRYIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRYIN.M with the given input arguments.
%
%      TRYIN('Property','Value',...) creates a new TRYIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tryin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tryin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tryin

% Last Modified by GUIDE v2.5 04-Jun-2020 16:17:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tryin_OpeningFcn, ...
                   'gui_OutputFcn',  @Tryin_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Tryin is made visible.
function Tryin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tryin (see VARARGIN)
u=1;
T=0.01;

Ns= 1000 ;
k=2;
Y = zeros(1,Ns);
X1 = zeros(1,Ns);
X2 = zeros(1,Ns);
X3 = zeros(1,Ns);
X4 = zeros(1,Ns);

imp = zeros(1,Ns);        imp(2)=1/T;

% Choose default command line output for Tryin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tryin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tryin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function m_Callback(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m as text
%        str2double(get(hObject,'String')) returns contents of m as a double
m = str2double(get(handles.m,'string'));
switch m

    case 0
set(handles.a0,'Enable','on');
set(handles.b1,'Enable','off');
set(handles.b4,'Enable','off');
set(handles.b3,'Enable','off');
set(handles.b2,'Enable','off');

    case 1
set(handles.a0,'Enable','on');
        set(handles.b1,'Enable','on');
  set(handles.b4,'Enable','off');
set(handles.b3,'Enable','off');
set(handles.b2,'Enable','off');

    case 2
set(handles.b2,'Enable','on');
set(handles.b1,'Enable','on');
set(handles.b0,'Enable','on');
   set(handles.b4,'Enable','off');
   set(handles.b3,'Enable','off');

    case 3
 set(handles.b3,'Enable','on');
 set(handles.b2,'Enable','on');
 set(handles.b1,'Enable','on');
 set(handles.b0,'Enable','on');
 set(handles.b4,'Enable','off');
 
    case 4 
        set(handles.b3,'Enable','on');
 set(handles.b2,'Enable','on');
 set(handles.b1,'Enable','on');
 set(handles.b0,'Enable','on');
 set(handles.b4,'Enable','on');
 
    
end

if m > 4
    msgbox('Maximum order available is 4 :(');
  m =4;
end



% --- Executes during object creation, after setting all properties.
function m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double

n = str2double(get(handles.n,'string'));

switch n
    case 1
set(handles.a0,'Enable','on');
        set(handles.a1,'Enable','on');
  set(handles.a4,'Enable','off');
set(handles.a3,'Enable','off');
set(handles.a2,'Enable','off');

    case 2
set(handles.a2,'Enable','on');
set(handles.a1,'Enable','on');
set(handles.a0,'Enable','on');
   set(handles.a4,'Enable','off');
   set(handles.a3,'Enable','off');

    case 3
 set(handles.a3,'Enable','on');
 set(handles.a2,'Enable','on');
 set(handles.a1,'Enable','on');
 set(handles.a0,'Enable','on');
 set(handles.a4,'Enable','off');
 
    case 4 
 set(handles.a3,'Enable','on');
 set(handles.a2,'Enable','on');
 set(handles.a1,'Enable','on');
 set(handles.a0,'Enable','on');
 set(handles.a4,'Enable','on');
 
    
end
if n > 4
    msgbox('Maximum order available is 4 :(');
  n =4;
end

% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function a1_Callback(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1 as text
%        str2double(get(hObject,'String')) returns contents of a1 as a double


% --- Executes during object creation, after setting all properties.
function a1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b4_Callback(hObject, eventdata, handles)
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b4 as text
%        str2double(get(hObject,'String')) returns contents of b4 as a double


% --- Executes during object creation, after setting all properties.
function b4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b0_Callback(hObject, eventdata, handles)
% hObject    handle to b0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b0 as text
%        str2double(get(hObject,'String')) returns contents of b0 as a double


% --- Executes during object creation, after setting all properties.
function b0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a2_Callback(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a2 as text
%        str2double(get(hObject,'String')) returns contents of a2 as a double


% --- Executes during object creation, after setting all properties.
function a2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a4_Callback(hObject, eventdata, handles)
% hObject    handle to a4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a4 as text
%        str2double(get(hObject,'String')) returns contents of a4 as a double


% --- Executes during object creation, after setting all properties.
function a4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a3_Callback(hObject, eventdata, handles)
% hObject    handle to a3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a3 as text
%        str2double(get(hObject,'String')) returns contents of a3 as a double


% --- Executes during object creation, after setting all properties.
function a3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b3_Callback(hObject, eventdata, handles)
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b3 as text
%        str2double(get(hObject,'String')) returns contents of b3 as a double


% --- Executes during object creation, after setting all properties.
function b3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b2 as text
%        str2double(get(hObject,'String')) returns contents of b2 as a double


% --- Executes during object creation, after setting all properties.
function b2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b1 as text
%        str2double(get(hObject,'String')) returns contents of b1 as a double


% --- Executes during object creation, after setting all properties.
function b1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a0_Callback(hObject, eventdata, handles)
% hObject    handle to a0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a0 as text
%        str2double(get(hObject,'String')) returns contents of a0 as a double


% --- Executes during object creation, after setting all properties.
function a0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in Step.
function Step_Callback(hObject, eventdata, handles)
% hObject    handle to Step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Step


% --- Executes on button press in Impulse.
function Impulse_Callback(hObject, eventdata, handles)
% hObject    handle to Impulse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Impulse


% --- Executes on selection change in Responses.
function Responses_Callback(hObject, eventdata, handles)
% hObject    handle to Responses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Responses contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Responses

n = str2double ( get(handles.n,'string') );
m = str2double ( get(handles.m,'string') );

switch m 
    case 4
b4 = str2double ( get(handles.b3,'string') );
b3 = str2double ( get(handles.b3,'string') );
b2 = str2double ( get(handles.b2,'string') );
b1 = str2double ( get(handles.b1,'string') );
b0 = str2double ( get(handles.b0,'string') );


    case 3
b3 = str2double ( get(handles.b3,'string') );
b2 = str2double ( get(handles.b2,'string') );
b1 = str2double ( get(handles.b1,'string') );
b0 = str2double ( get(handles.b0,'string') );
b4=0;


    case 2
b2 = str2double ( get(handles.b2,'string') );
b1 = str2double ( get(handles.b1,'string') );
b0 = str2double ( get(handles.b0,'string') );
b4=0;   b3=0;

    case 1
  b1 = str2double ( get(handles.b1,'string') );
  b0 = str2double ( get(handles.b0,'string') );
  b2=0;   b3=0;       b4=0;

    case 0

  b0 = str2double ( get(handles.b0,'string') );
  b2=0;   b3=0;       b4=0;     b1=0;
end

assignin('base','b4',b4);
assignin('base','b3',b3);
assignin('base','b2',b2);
assignin('base','b1',b1);
assignin('base','b0',b0);

Response = get(handles.Responses,'Value');



T=0.02;
Ns= 1000 ;
k=2;
u = ones(1,Ns);
Y1 = zeros(1,Ns);
Y = zeros(1,Ns);
X1 = zeros(1,Ns);
X2 = zeros(1,Ns);
X3 = zeros(1,Ns);
X4 = zeros(1,Ns);

imp = zeros(1,Ns);        imp(2)=1/T;

 switch n
     case 1      %% First ORDER 
        

a1 = str2double ( get(handles.a1,'string') );
a0 = str2double ( get(handles.a0,'string') );

assignin('base','a1',a1);
assignin('base','a0',a0);

A =  -a0/a1;        B =  b0/a1 - a0*b1/a1^2 ; 
C= 1;               D= b1/a1;

set(handles.MatA,'Data',A);
set(handles.MatB,'Data',B);
set(handles.MatC,'Data',C);
set(handles.MatD,'Data',D);

         if Response == 1
       
            for k=2:Ns
            X1(k) = ( ( X1(k-1) / T ) + (b0/a1 - a0*b1/ a1^2 )*u(k) ) / ( 1/T + a0/a1);
            Y(k) = X1(k) + ( b1/a1 )*u(k);
            end
            
      axes(handles.input); 
      t0 = (-1 : 0.01 : 1)';
      step = t0>= 0;
      plot(t0,step)';

     axes(handles.Output);
     t =  0 : T : 20-T ;
     plot(t,Y);
   
     axes(handles.X1); 
     plot(t,X1);
     
     axes(handles.X2)
     plot(0);
     
     axes(handles.X3)
     plot(0);
     
     axes(handles.X4)
     plot(0)
 
         end

      if Response ==2
            
          for k=2:Ns
         X1(k) = ( ( X1(k-1) / T ) + (b0/a1 - a0*b1/ a1^2 )*u(k) ) / ( 1/T + a0/a1);
         Y(k) = X1(k) + ( b1/a1 )*u(k);  
         Y1(k) = ( ( X1(k) - X1(k-1) )/ T ) + ( (b1/a1) * ( ( u(k)-u(k-1) ) /T ) );
          end
for k=2:Ns
    X1(k) = ( ( X1(k-1) / T ) + (b0/a1 - a0*b1/ a1^2 )*imp(k) ) / ( 1/T + a0/a1);
end

      axes(handles.input);
      t =  0 : T : 20-T ;
      plot(t,imp);

      axes(handles.Output);
      plot(t,Y1);
     
     axes(handles.X1); 
     plot(t,X1);
     
axes(handles.X2)
     plot(0);
     
     axes(handles.X3)
     plot(0);
     
     axes(handles.X4)
     plot(0)

      end

     
         
          case 2            %% Second ORDER 


a2 = str2double ( get(handles.a2,'string') );
a1 = str2double ( get(handles.a1,'string') );
a0 = str2double ( get(handles.a0,'string') );

assignin('base','a2',a2);
assignin('base','a1',a1);
assignin('base','a0',a0);

       
A =  [ 0 , -a0/a2 ; 1, -a1/a2 ];        B =  [ (b0/a2) - (a0*b2/a2^2) ; (b1/a2) - (a1*b2/a2^2) ]; 
C= [0 ,1];                              D= b2/a2;

set(handles.MatA,'Data',A);
set(handles.MatB,'Data',B);
set(handles.MatC,'Data',C);
set(handles.MatD,'Data',D);

         if Response == 1
         
            for k=2:Ns
           X2(k) = ( T* ( (b0/a2 - a0*b2/a2^2)*T*u(k) + X1(k-1) + ( b1/a2 - a1*b2/a2^2)*u(k) ) + X2(k-1) ) / (1+ T*a1/a2 + T^2*a0/a2 );

           X1(k) = T* ( -a0/a2 * X2(k) + ( b0/a2 - a0*b2/a2^2)*u(k) ) + X1(k-1); 

           Y(k) = X2(k) + ( b2/a2 )*u(k);
           
            end
            
      axes(handles.input); 
      t0 = (-1 : 0.01 : 1)';
      step = t0>= 0;
      plot(t0,step)';
      
     axes(handles.Output);
     t =  0 : T : 20 - T;  
     plot(t,Y);
   
     axes(handles.X1); 
     plot(t,X1);
     
     axes(handles.X2); 
     plot(t,X2);  
     
     axes(handles.X3)
     plot(0);
     
     axes(handles.X4)
     plot(0)

     
        end
 
         

      if Response ==2
          
          
          for k=2:Ns
           X2(k) = ( T* ( (b0/a2 - a0*b2/a2^2)*T*u(k) + X1(k-1) + ( b1/a2 - a1*b2/a2^2)*u(k) ) + X2(k-1) ) / (1+ T*a1/a2 + T^2*a0/a2 );

           X1(k) = T* ( -a0/a2 * X2(k) + ( b0/a2 - a0*b2/a2^2)*u(k) ) + X1(k-1); 

           Y(k) = X2(k) + ( b2/a2 )*u(k);
          
           Y1(k) = ( ( X2(k) - X2(k-1) )/ T ) + ( (b2/a2) * ( ( u(k)-u(k-1) )/T ) );
              
          end

          for k = 2:Ns
         X2(k) = ( T* ( (b0/a2 - a0*b2/a2^2)*T*imp(k) + X1(k-1) + ( b1/a2 - a1*b2/a2^2)*imp(k) ) + X2(k-1) ) / (1+ T*a1/a2 + T^2*a0/a2 );

         X1(k) = T* ( -a0/a2 * X2(k) + ( b0/a2 - a0*b2/a2^2)*imp(k) ) + X1(k-1); 
          end
          
      axes(handles.input);
      t =  0 : T : 20 - T;
      plot(t,imp);

    axes(handles.Output);
     plot(t,Y1);
     
     axes(handles.X1); 
     plot(t,X1);
     
     axes(handles.X2); 
     plot(t,X2);

     axes(handles.X3)
     plot(0);
     
     axes(handles.X4)
     plot(0)
      end

case 3           %% Third ORDER 



a3 = str2double ( get(handles.a3,'string') );
a2 = str2double ( get(handles.a2,'string') );
a1 = str2double ( get(handles.a1,'string') );
a0 = str2double ( get(handles.a0,'string') );

assignin('base','a3',a3);
assignin('base','a2',a2);
assignin('base','a1',a1);
assignin('base','a0',a0);

A =  [ 0 ,0, -a0/a3 ; 1,0, -a1/a3 ;0,1,-a2/a3 ];        B =  [ (b0/a3) - (a0*b3/a3^2) ; (b1/a3) - (a1*b3/a3^2) ; (b2/a3) - (a2*b3/a3^2)]; 
C= [0 ,0,1];                                            D= b3/a3;

       

set(handles.MatA,'Data',A);
set(handles.MatB,'Data',B);
set(handles.MatC,'Data',C);
set(handles.MatD,'Data',D);

         if Response == 1
          
            for k=2:Ns
         X1(k) = ( -a0*b3 / a3^2 + b0/a3 )*u(k)*T + X1(k-1) - (T*a0/a3)*X3(k-1);

         X2(k) = T*X1(k) - (T*a1/a3)*X3(k-1) + ( b1/a3 - a1*b3/a3^2)*u(k)*T + X2(k-1);

         X3(k) = ( T*X2(k) + ( b2/a3 - a2*b3/a3^2 ) *u(k)*T + X3(k-1) ) / ( 1 + T*a2/a3);

         Y(k) = X3(k) + ( b3/a3 )*u(k);

            end
      axes(handles.input); 
      t0 = (-1 : 0.01 : 1)';
      step = t0>= 0;
      plot(t0,step)';

     axes(handles.Output);
     t =  0 : T : 20 - T;  
     plot(t,Y);
   
     axes(handles.X1); 
     plot(t,X1);
     
     axes(handles.X2); 
     plot(t,X2);

     axes(handles.X3); 
      plot(t,X3);
     
     axes(handles.X4)
     plot(0)
 
         end

      if Response ==2 
          for k=2:Ns
        
         X1(k) = ( -a0*b3 / a3^2 + b0/a3 )*u(k)*T + X1(k-1) - (T*a0/a3)*X3(k-1);

         X2(k) = T*X1(k) - (T*a1/a3)*X3(k-1) + ( b1/a3 - a1*b3/a3^2)*u(k)*T + X2(k-1);

         X3(k) = ( T*X2(k) + ( b2/a3 - a2*b3/a3^2 ) *u(k)*T + X3(k-1) ) / ( 1 + T*a2/a3);

         Y(k) = X3(k) + ( b3/a3 )*u(k);

         Y1(k) = ( ( X3(k) - X3(k-1) )/ T ) + ( (b3/a3) * ( ( u(k)-u(k-1) ) /T ) ); 

          end
          for k=2:Ns
         X1(k) = ( -a0*b3 / a3^2 + b0/a3 )*imp(k)*T + X1(k-1) - (T*a0/a3)*X3(k-1);

         X2(k) = T*X1(k) - (T*a1/a3)*X3(k-1) + ( b1/a3 - a1*b3/a3^2)*imp(k)*T + X2(k-1);

         X3(k) = ( T*X2(k) + ( b2/a3 - a2*b3/a3^2 ) *imp(k)*T + X3(k-1) ) / ( 1 + T*a2/a3);

     
          end

      axes(handles.input);
      t =  0 : T : 20 - T;
      plot(t,imp);

      axes(handles.Output);
      plot(t,Y1);
     
     axes(handles.X1); 
     plot(t,X1);
     
     axes(handles.X2); 
     plot(t,X2);

     axes(handles.X3); 
     plot(t,X3);
     
     axes(handles.X4)
     plot(0)

      end

case 4           %% Fourth ORDER 


a4 = str2double ( get(handles.a4,'string') );
a3 = str2double ( get(handles.a3,'string') );
a2 = str2double ( get(handles.a2,'string') );
a1 = str2double ( get(handles.a1,'string') );
a0 = str2double ( get(handles.a0,'string') );

assignin('base','a4',a4);
assignin('base','a3',a3);
assignin('base','a2',a2);
assignin('base','a1',a1);
assignin('base','a0',a0);

A =  [ 0 ,0,0, -a0/a4 ; 1,0,0, -a1/a4 ;0,1,0,-a2/a4 ; 0,0,1,-a3/a4 ];  
      
B =  [ (b0/a4) - (a0*b4/a4^2) ; (b1/a4) - (a1*b4/a4^2) ; (b2/a4) - (a2*b4/a4^2) ; (b3/a4) - (a3*b4/a4^2) ]; 

C= [0 ,0,0,1];                                   
         
D= b4/a4;

       

set(handles.MatA,'Data',A);
set(handles.MatB,'Data',B);
set(handles.MatC,'Data',C);
set(handles.MatD,'Data',D);

         if Response == 1
          
            for k=2:Ns
           
        X1(k) = T* ( (-a0/a4 )* X4(k-1) + ( b0/a4 - a0*b4/a4^2 )*u(k) ) + X1(k-1);

        X2(k) = T* ( X1(k) - (a1/a4)*X4(k-1) + (b1/a4 - a1*b4/a4^2 )*u(k) ) + X2(k-1);
         
        X3(k) = T* ( X2(k) - (a2/a4)*X4(k-1) + ( b2/a4 - a2*b4/a4^2)*u(k)) + X3(k-1);

        X4(k)= T* ( X3(k) - (a3/a4)*X4(k-1) + ( b3/a4 - a3*b4/a4^2)*u(k) ) + X4(k-1);

        Y(k) = X4(k) + ( b4/a4 )*u(k);

            end
      axes(handles.input); 
      t0 = (-1 : 0.01 : 1)';
      step = t0>= 0;
      plot(t0,step)';

     axes(handles.Output);
     t =  0 : T : 20 - T;  
     plot(t,Y);
   
     axes(handles.X1); 
     plot(t,X1);
     
     axes(handles.X2); 
     plot(t,X2);

     axes(handles.X3); 
      plot(t,X3);

      axes(handles.X4); 
      plot(t,X4);
 
         end

      if Response ==2 
          for k=2:Ns
        
        X1(k) = T* ( (-a0/a4 )* X4(k-1) + ( b0/a4 - a0*b4/a4^2 )*u(k) ) + X1(k-1);

        X2(k) = T* ( X1(k) - (a1/a4)*X4(k-1) + (b1/a4 - a1*b4/a4^2 )*u(k) ) + X2(k-1);
         
        X3(k) = T* ( X2(k) - (a2/a4)*X4(k-1) + ( b2/a4 - a2*b4/a4^2)*u(k)) + X3(k-1);

        X4(k)= T* ( X3(k) - (a3/a4)*X4(k-1) + ( b3/a4 - a3*b4/a4^2)*u(k) ) + X4(k-1);

        Y(k) = X4(k) + ( b4/a4 )*u(k);
        Y1(k) = ( ( X4(k) - X4(k-1) )/ T ) + ( (b4/a4) * ( ( u(k)-u(k-1) ) /T ) ); 

          end

          for k=2:Ns
       X1(k) = T* ( (-a0/a4 )* X4(k-1) + ( b0/a4 - a0*b4/a4^2 )*imp(k) ) + X1(k-1);

        X2(k) = T* ( X1(k) - (a1/a4)*X4(k-1) + (b1/a4 - a1*b4/a4^2 )*imp(k) ) + X2(k-1);

        X3(k) = T* ( X2(k) - (a2/a4)*X4(k-1) + ( b2/a4 - a2*b4/a4^2)*imp(k)) + X3(k-1);

        X4(k)= T* ( X3(k) - (a3/a4)*X4(k-1) + ( b3/a4 - a3*b4/a4^2)*imp(k) ) + X4(k-1);
          end
      axes(handles.input);
      t =  0 : T : 20 - T;
      plot(t,imp);

      axes(handles.Output);
      plot(t,Y1);
     
     axes(handles.X1); 
     plot(t,X1);
     
     axes(handles.X2); 
     plot(t,X2);

     axes(handles.X3); 
     plot(t,X3);
     
     axes(handles.X4); 
     plot(t,X4);

      end
         
         
 end
 



% --- Executes during object creation, after setting all properties.
function Responses_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Responses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Scale.
function Scale_Callback(hObject, eventdata, handles)
% hObject    handle to Scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
