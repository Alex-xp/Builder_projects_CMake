///////////////////////////////////////////////////////////////////////////
// C++ code generated with wxFormBuilder (version 3.10.1-0-g8feb16b3)
// http://www.wxformbuilder.org/
//
// PLEASE DO *NOT* EDIT THIS FILE!
///////////////////////////////////////////////////////////////////////////

#pragma once

#include <wx/artprov.h>
#include <wx/xrc/xmlres.h>
#include <wx/button.h>
#include <wx/string.h>
#include <wx/bitmap.h>
#include <wx/image.h>
#include <wx/icon.h>
#include <wx/gdicmn.h>
#include <wx/font.h>
#include <wx/colour.h>
#include <wx/settings.h>
#include <wx/sizer.h>
#include <wx/panel.h>
#include <wx/frame.h>

///////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
/// Class ui_MainFrame
///////////////////////////////////////////////////////////////////////////////
class ui_MainFrame : public wxFrame
{
	private:

	protected:
		wxPanel* m_panel1;
		wxButton* m_btn_about;
		wxPanel* m_panel2;

		// Virtual event handlers, override them in your derived class
		virtual void OnClickBtnAbout( wxCommandEvent& event ) { event.Skip(); }


	public:

		ui_MainFrame( wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = wxT("Приложение с графическим интерфейсом"), const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize( 1000,700 ), long style = wxDEFAULT_FRAME_STYLE|wxTAB_TRAVERSAL );

		~ui_MainFrame();

};

