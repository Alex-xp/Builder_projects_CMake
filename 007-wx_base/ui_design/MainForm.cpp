#include "MainForm.h"

MainForm::MainForm():ui_MainFrame(NULL){}

MainForm::~MainForm(){}

void MainForm::OnClickBtnAbout( wxCommandEvent& event ) {
    wxMessageBox(wxT("Это пример приложения на wxWidget с применением дизайнера форм wxFormBuilder."), wxT("Пример приложения"), wxOK | wxICON_INFORMATION);
}
