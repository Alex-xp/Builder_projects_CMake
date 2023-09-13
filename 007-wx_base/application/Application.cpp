#include "Application.h"

wxIMPLEMENT_APP(Application);

bool Application::OnInit(){
    MainForm *frame = new MainForm();
    frame->Show(true);
    return true;
}
