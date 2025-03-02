%Designed by Adam Ribblett
function varargout = GUI5(varargin)
% GUI5 MATLAB code for GUI5.fig
%      GUI5, by itself, creates a new GUI5 or raises the existing
%      singleton*.
%
%      H = GUI5 returns the handle to a new GUI5 or the handle to
%      the existing singleton*.
%
%      GUI5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI5.M with the given input arguments.
%
%      GUI5('Property','Value',...) creates a new GUI5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI5

% Last Modified by GUIDE v2.5 26-Apr-2013 03:56:43

% pushbutton30 initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI5_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI5_OutputFcn, ...
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


% --- Executes just before GUI5 is made visible.
function GUI5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI5 (see VARARGIN)

% Choose default command line output for GUI5
handles.output = hObject;

% Update handles structure
guidata(hObject,handles)
axes(handles.axes2)
imshow('waiting_patient.jpg');
set(handles.intro,'Visible','Off')







% UIWAIT makes GUI5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI5_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in toLast.
function toLast_Callback(hObject, eventdata, handles)
% hObject    handle to toLast (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
GUI4

% --- Executes on button press in toHome.
function toHome_Callback(hObject, eventdata, handles)
% hObject    handle to toHome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
nanohubGUI_sec008_team24

% --- Executes on button press in toOv.
function toOv_Callback(hObject, eventdata, handles)
% hObject    handle to toOv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
overviewGUI_sec008_team24

% --- Executes on button press in toNext.
function toNext_Callback(hObject, eventdata, handles)
% hObject    handle to toNext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
GUI6

% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
GUI4

% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
nanohubGUI_sec008_team24

% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
overviewGUI_sec008_team24

% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
GUI6


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

%Determine what to show according to the slider bar
x = get(handles.slider4, 'Value')
if x == 0 || x == 0.1
    set(handles.intro, 'Visible', 'On')
    set(handles.text10, 'Visible', 'Off')
    axes(handles.axes2)
    imshow('GUI5_13.jpg');
elseif x == 1 || x == 1.1
    set(handles.intro, 'Visible', 'Off')
    set(handles.text10, 'Visible', 'On')
    set(handles.text10, 'String', 'What is an ECM? the extracellular matrix is the substance that covers cells in many issues in the body. It is composed of four different molecules:	Structural Proteins, Glycoproteins, Glycosaminoglycans and Proteoglycans, Matricellular Proteins.');
    axes(handles.axes2)
    imshow('GUI5_1.jpg');
elseif x == 2 || x == 2.1
    set(handles.text10, 'String', 'These four molecules do a lot for the ECM. Collagen (Structural Protein) is found in natural living tissue as the main structural framework. Fibronectin (Glycoprotein) help cells bind to Collagen allowing cells to move through the extracellular matrix. The Glycosaminoglycens and Proteoglycans keep the matrix hydrated and signals cells. Finally the Matricellular proteins add more functionality to the extracellular matrix.');
    axes(handles.axes2)
    imshow('GUI5_2.jpg');
elseif x == 3 || x == 3.1
    set(handles.text10, 'String', 'This will help the patient because the extracellular matrix acts as a structure for the patients� cells to enter and form again, healing the wound. The product we will use is OASIS�s Wound Matrix.');
    axes(handles.axes2)
    imshow('GUI5_3.jpg');
elseif x == 4 || x == 4.1
    set(handles.text10, 'String', 'Treating the Patient: 1. Prepare the wound by cleaning it and waiting for bleeding to stop.');
    axes(handles.axes2)
    imshow('GUI5_4.jpg');
elseif x == 5 || x == 5.1
    set(handles.text10, 'String', 'Treating the Patient: 2. Apply a Dry sheet of OASIS Wound Matrix, cutting it to the proper size, slightly larger than the wound.');
    axes(handles.axes2)
    imshow('GUI5_5.jpg');
elseif x == 6 || x == 6.1
    set(handles.text10, 'String', 'Treating the Patient: 3. Secure the OASIS Wound Matrix using any method you choose (Tissue Sealant, Bolsters, Dissolvable Clips, sutures, staples, etc.).');
    axes(handles.axes2)
    imshow('GUI5_6.jpg');
elseif x == 7 || x == 7.1
    set(handles.text10, 'String', 'Treating the Patient: 4. Rehydrate the OASIS Wound Matrix by using sterile saline.');
    axes(handles.axes2)
    imshow('GUI5_7.jpg');   
elseif x == 8 || x == 8.1
    set(handles.text10, 'String', 'Treating the Patient: 5. Cover the OASIS Wound Matrix with a non-adherent wound dressing, gauze.');
    axes(handles.axes2)
    imshow('GUI5_8.jpg');
elseif x == 9 || x == 9.1
    set(handles.text10, 'String', 'Treating the Patient: 6. Wrap the covering with a secondary wound dressing, chose based on the wound.');
    axes(handles.axes2)
    imshow('GUI5_9.jpg');
elseif x == 10 || x == 10.1
    set(handles.text10, 'String', 'Treating the Patient: 7. Check the OASIS Wound Matrix for infection and necrosis. Caramelization is supposed to occur. Reapply with out surgically removing OASIS Wound Matrix.');
    axes(handles.axes2)
    imshow('GUI5_10.jpg');
elseif x == 11 || x == 11.1
    set(handles.text10, 'String', 'Treating the Patient: 8. Reapply the Wound Matrix every 7 days.');
    axes(handles.axes2)
    imshow('GUI5_11.jpg');
elseif x == 12 || x == 12.1
    set(handles.text10, 'String', 'Do not apply the OASIS Wound Matrix to third degree burns because it will not work, also if the patient is sensitive to porcine materials. Do not remove the gel by surgical removal. Discontinue use of the OASIS Wound Matrix if infection, chronic inflammation, allergic reaction, or excessive redness, pain, swelling, or blistering occurs.');
    axes(handles.axes2)
    imshow('GUI5_12.jpg');
end



% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in toBegin.
function toBegin_Callback(hObject, eventdata, handles)
% hObject    handle to toBegin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Make the one should be seen to be visible
set(hObject,'Visible','off')
set(handles.slider4,'Visible','on')

%preset slider bar
set(handles.slider4, 'Min', 0);
set(handles.slider4, 'Max', 12);
set(handles.slider4, 'SliderStep', [1, 1]/12);

%initialize images
set(handles.intro, 'Visible', 'On')
set(handles.text10, 'Visible', 'Off')
axes(handles.axes2)
imshow('GUI5_13.jpg');

