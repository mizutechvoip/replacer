//---------------------------------------------------------------------------

#ifndef mainH
#define mainH
//---------------------------------------------------------------------------
#include <FileCtrl.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------

#define StringEx AnsiString
#define IntToStrEx IntToStr
#define StringExToInt StrToIntDef

void __fastcall PutToDebugLog(AnsiString msg);
void __fastcall PutToDebugLog(int level, AnsiString msg);


StringEx __fastcall StrGetAfter(const StringEx &msgin, const StringEx &after, bool retallasdefault = true);
StringEx __fastcall StrGetUntill(const StringEx &msgin, const StringEx &untill, bool retallasdefault = true);
StringEx __fastcall StrGetBetween(const StringEx &msgin, const StringEx &after,const StringEx &untill, bool retallasdefault = true);
StringEx __fastcall StrReplaceBetween(const StringEx &msgin, const StringEx &after,const StringEx &untill, const StringEx &replacewith);
AnsiString __fastcall StrRevrite(AnsiString msgtext, AnsiString orig, AnsiString replc, bool casesensitive = true, bool wholewordsonly = false, int replacemode = 0, int maxcount = 99999 );
StringEx  __fastcall  RemoveLine(StringEx &txt, const StringEx &beginwith);
bool __fastcall StrToBool(StringEx str, bool def = false);


class TForm1 : public TForm
{
__published:	// IDE-managed Components
  TLabel *Label1;
  TEdit *Edit1;
  TButton *Button1;
  TLabel *Label2;
  TEdit *Edit2;
  TLabel *Label3;
  TEdit *Edit3;
  TCheckBox *CheckBox1;
  TCheckBox *CheckBox2;
  TButton *Button2;
  TMemo *Memo1;
  TLabel *Label4;
  TLabel *Label5;
  TEdit *Edit4;
  TCheckBox *CheckBox3;
  TButton *Button3;
  TOpenDialog *OpenDialog1;
  TButton *Button4;
    TButton *Button5;
    TButton *Button6;
    TRadioGroup *RadioGroup1;
    TCheckBox *CheckBox4;
    TLabel *Label6;
    TEdit *Edit5;
    TTimer *tm_start;
  void __fastcall Button1Click(TObject *Sender);
  void __fastcall Button2Click(TObject *Sender);
  void __fastcall Button3Click(TObject *Sender);
  void __fastcall Button4Click(TObject *Sender);
    void __fastcall Button5Click(TObject *Sender);
    void __fastcall Button6Click(TObject *Sender);
    void __fastcall FormShow(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall tm_startTimer(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
  __fastcall TForm1(TComponent* Owner);
  //void __fastcall PutToDebugLog(AnsiString msg);     
  AnsiString __fastcall StrRevriteSimple(AnsiString msgtext, AnsiString orig, AnsiString replc);
  AnsiString dir;
  AnsiString find;
  AnsiString findfrom;
  AnsiString findto;
  AnsiString replace;
  AnsiString filter;
  bool casesensitive;
  bool wholewordsonly;
  bool allfiles;
  int allreplacecount;
  int replacecount;
  void __fastcall LoadFilesAll(AnsiString directory);
  void __fastcall LoadFilesFilter(AnsiString directory, AnsiString filter);
  void __fastcall ParseFile(AnsiString filename);
  void __fastcall FindExExEx(AnsiString text);
  void __fastcall FindToTranslate(AnsiString text);

  void __fastcall LoadFiles2(AnsiString directory);

  void __fastcall ClassifyHFile(AnsiString filename, AnsiString resultpath1, AnsiString resultpath2);
  void __fastcall ClassifyCppFile(AnsiString filename);
  AnsiString __fastcall GetLineAfterVar(AnsiString line);
  void __fastcall ProcessCmdLineOption(StringEx key, StringEx val);
  unsigned long lastlogtick;

  TStringList *translatelist;

    bool option_quiet;
    bool option_exit;
    bool option_run;
    bool option_runforce;
    bool option_runscript;
    bool option_hide;
    bool hasoption_dir;
    bool hasoption_find;
    bool hasoption_replace;


};


//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
