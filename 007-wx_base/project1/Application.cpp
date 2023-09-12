#include "Application.h"

wxIMPLEMENT_APP(Application);

bool Application::OnInit(){
    MyFrame *frame = new MyFrame();
    frame->Show(true);
    return true;
}




// MyFrame - конструктор
MyFrame::MyFrame() : wxFrame(NULL, wxID_ANY, L"Привет мир")
{
    // создаем меню "File" и добавляем пункты
    wxMenu *menuFile = new wxMenu;
    menuFile->Append(ID_Hello, "&Hello...\tCtrl-H", "Help string shown in status bar for this menu item"); // пункт Hello
    menuFile->AppendSeparator(); // разделитель 
    menuFile->Append(wxID_EXIT); // пункт Exit

    // создаем меню "Help" и добавляем пункты
    wxMenu *menuHelp = new wxMenu;
    menuHelp->Append(wxID_ABOUT); // пункт About (стандартный)

    // Пункты меню созданы - создаем само меню
    wxMenuBar *menuBar = new wxMenuBar;
    menuBar->Append(menuFile, "&File"); // добавляем меню File
    menuBar->Append(menuHelp, "&Help"); // добавляем меню Help
    SetMenuBar( menuBar ); // установка менюбара

    CreateStatusBar(); // строка состояния (снизу)
    SetStatusText(L"Добро пожаловать в wxWidgets!");

    // привязка событий меню с обработчиками
    Bind(wxEVT_MENU, &MyFrame::OnHello, this, ID_Hello);
    Bind(wxEVT_MENU, &MyFrame::OnAbout, this, wxID_ABOUT);
    Bind(wxEVT_MENU, &MyFrame::OnExit, this, wxID_EXIT);
}

// MyFrame - обработчик закрытия
void MyFrame::OnExit(wxCommandEvent& event)
{
    Close(true);
}

// MyFrame - обработчик для открытия окна "О приложении" 
void MyFrame::OnAbout(wxCommandEvent& event)
{
    wxMessageBox("This is a wxWidgets Hello World example", "About Hello World", wxOK | wxICON_INFORMATION);
}

// MyFrame - обработчик открытия окна приветствия
void MyFrame::OnHello(wxCommandEvent& event)
{
    wxLogMessage("Hello world from wxWidgets!");
}

