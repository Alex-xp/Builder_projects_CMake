#pragma once


#include <wx/wx.h>


// Класс приложения
class Application : public wxApp{
    public:
    virtual bool OnInit();
};

// Класс основного фрейма
class MyFrame : public wxFrame
{
public:
    MyFrame();
private:
    void OnHello(wxCommandEvent& event);
    void OnExit(wxCommandEvent& event);
    void OnAbout(wxCommandEvent& event);
};

// Перечисления нужны для идентификации пунктов меню
enum {
    ID_Hello = 1
};
