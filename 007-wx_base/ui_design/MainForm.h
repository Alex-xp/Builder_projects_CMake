#pragma once

#include <wx/wxprec.h>
#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include "designer/UIDesignData.h"

class MainForm:public ui_MainFrame{

    public:
        MainForm();
        virtual ~MainForm();

        virtual void OnClickBtnAbout( wxCommandEvent& event );

};
