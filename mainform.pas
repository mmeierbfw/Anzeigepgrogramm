unit mainform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, NxCollection, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, NxPageControl,
  uframefilter;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    iueber: TImage;
    ieinstellungen: TImage;
    pleft: TPanel;
    psonstiges: TPanel;
    lsonstiges: TLabel;
    Button9: TButton;
    pimage: TPanel;
    IStatusok: TImage;
    iSTAtusfalse: TImage;
    lprogress: TLabel;
    piupdate: TPanel;
    iupdate: TImage;
    pagermain: TPageControl;
    tabanzeigen: TTabSheet;
    tabvollbild: TTabSheet;
    NxFlipPanel1: TNxFlipPanel;
    ptabellen: TNxPageControl;
    tabzwischen: TNxTabSheet;
    gridzwi: TNextDBGrid;
    zwidokid: TNxDBTextColumn;
    zwilg: TNxDBTextColumn;
    zwinutzernummer: TNxDBTextColumn;
    zwidatei: TNxDBMemoColumn;
    zwiposteingang: TNxDBTextColumn;
    zwiabrechnungsende: TNxDBTextColumn;
    zwiname: TNxDBTextColumn;
    NxDBTextColumn24: TNxDBTextColumn;
    NxDBTextColumn32: TNxDBTextColumn;
    zwinotizen: TNxDBMemoColumn;
    NxDBTextColumn11: TNxDBTextColumn;
    NxDBTextColumn12: TNxDBTextColumn;
    NxDBTextColumn33: TNxDBTextColumn;
    NxDBTextColumn23: TNxDBTextColumn;
    zwivollbild: TNxDBImageColumn;
    zwiimage: TNxDBImageColumn;
    tabmontagen: TNxTabSheet;
    gridmon: TNextDBGrid;
    mondokid: TNxDBTextColumn;
    monliegenschaft: TNxDBTextColumn;
    monnutzernummer: TNxDBTextColumn;
    mondatei: TNxDBMemoColumn;
    monposteingang: TNxDBTextColumn;
    monabrechnungsende: TNxDBTextColumn;
    NxDBTextColumn22: TNxDBTextColumn;
    NxDBTextColumn13: TNxDBTextColumn;
    NxDBTextColumn14: TNxDBTextColumn;
    NxDBMemoColumn3: TNxDBMemoColumn;
    NxDBTextColumn25: TNxDBTextColumn;
    NxDBTextColumn34: TNxDBTextColumn;
    NxDBTextColumn26: TNxDBTextColumn;
    NxDBImageColumn3: TNxDBImageColumn;
    monimage: TNxDBImageColumn;
    tabnutzerlisten: TNxTabSheet;
    gridnutzerliste: TNextDBGrid;
    nutdokid: TNxDBTextColumn;
    nutliegenschaft: TNxDBTextColumn;
    nutdatei: TNxDBMemoColumn;
    nutposteingang: TNxDBTextColumn;
    nutabrechnungsende: TNxDBTextColumn;
    NxDBMemoColumn6: TNxDBMemoColumn;
    NxDBTextColumn27: TNxDBTextColumn;
    NxDBTextColumn35: TNxDBTextColumn;
    NxDBTextColumn28: TNxDBTextColumn;
    NxDBImageColumn6: TNxDBImageColumn;
    nutimage: TNxDBImageColumn;
    tabenergieausweis: TNxTabSheet;
    gridenergie: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn15: TNxDBTextColumn;
    NxDBTextColumn16: TNxDBTextColumn;
    NxDBTextColumn17: TNxDBTextColumn;
    NxDBTextColumn18: TNxDBImageColumn;
    NxDBMemoColumn4: TNxDBMemoColumn;
    NxDBTextColumn29: TNxDBTextColumn;
    NxDBTextColumn36: TNxDBTextColumn;
    NxDBTextColumn30: TNxDBTextColumn;
    NxDBImageColumn5: TNxDBImageColumn;
    NxDBImageColumn1: TNxDBImageColumn;
    tabreklamation: TNxTabSheet;
    gridrek: TNextDBGrid;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn19: TNxDBTextColumn;
    NxDBMemoColumn5: TNxDBMemoColumn;
    NxDBTextColumn20: TNxDBTextColumn;
    NxDBTextColumn21: TNxDBTextColumn;
    NxDBMemoColumn7: TNxDBMemoColumn;
    NxDBTextColumn37: TNxDBTextColumn;
    NxDBTextColumn31: TNxDBTextColumn;
    NxDBImageColumn4: TNxDBImageColumn;
    NxDBImageColumn2: TNxDBImageColumn;
    tabvertrag: TNxTabSheet;
    gridverträge: TNextDBGrid;
    NxDBTextColumn10: TNxDBTextColumn;
    NxDBTextColumn38: TNxDBTextColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn40: TNxDBTextColumn;
    NxDBTextColumn41: TNxDBTextColumn;
    NxDBTextColumn43: TNxDBTextColumn;
    NxDBTextColumn44: TNxDBTextColumn;
    NxDBMemoColumn8: TNxDBMemoColumn;
    NxDBTextColumn45: TNxDBTextColumn;
    NxDBTextColumn46: TNxDBTextColumn;
    NxDBTextColumn39: TNxDBTextColumn;
    NxDBTextColumn59: TNxDBTextColumn;
    NxDBTextColumn48: TNxDBTextColumn;
    NxDBTextColumn47: TNxDBTextColumn;
    NxDBImageColumn9: TNxDBImageColumn;
    NxDBImageColumn8: TNxDBImageColumn;
    tabsonstiges: TNxTabSheet;
    gridsonstiges: TNextDBGrid;
    NxDBTextColumn42: TNxDBTextColumn;
    NxDBTextColumn49: TNxDBTextColumn;
    NxDBMemoColumn9: TNxDBMemoColumn;
    NxDBTextColumn58: TNxDBTextColumn;
    NxDBTextColumn50: TNxDBTextColumn;
    NxDBTextColumn51: TNxDBTextColumn;
    NxDBTextColumn52: TNxDBTextColumn;
    NxDBTextColumn53: TNxDBTextColumn;
    NxDBTextColumn54: TNxDBTextColumn;
    NxDBImageColumn10: TNxDBImageColumn;
    NxDBMemoColumn10: TNxDBMemoColumn;
    NxDBTextColumn55: TNxDBTextColumn;
    NxDBTextColumn57: TNxDBTextColumn;
    NxDBTextColumn56: TNxDBTextColumn;
    NxDBImageColumn12: TNxDBImageColumn;
    NxDBImageColumn11: TNxDBImageColumn;
    tabauftragsanforderung: TNxTabSheet;
    tabangebotsanfrage: TNxTabSheet;
    gridangebote: TNextDBGrid;
    NxDBTextColumn71: TNxDBTextColumn;
    NxDBTextColumn72: TNxDBTextColumn;
    NxDBMemoColumn13: TNxDBMemoColumn;
    NxDBTextColumn73: TNxDBTextColumn;
    NxDBTextColumn74: TNxDBTextColumn;
    NxDBTextColumn75: TNxDBTextColumn;
    NxDBTextColumn76: TNxDBTextColumn;
    NxDBTextColumn77: TNxDBTextColumn;
    NxDBTextColumn78: TNxDBTextColumn;
    NxDBImageColumn16: TNxDBImageColumn;
    NxDBMemoColumn14: TNxDBMemoColumn;
    NxDBTextColumn79: TNxDBTextColumn;
    NxDBTextColumn81: TNxDBTextColumn;
    NxDBTextColumn80: TNxDBTextColumn;
    NxDBImageColumn17: TNxDBImageColumn;
    NxDBImageColumn18: TNxDBImageColumn;
    leer2: TNxTabSheet;
    gridanforderungen: TNextDBGrid;
    NxDBTextColumn60: TNxDBTextColumn;
    NxDBTextColumn61: TNxDBTextColumn;
    NxDBMemoColumn11: TNxDBMemoColumn;
    NxDBTextColumn62: TNxDBTextColumn;
    NxDBTextColumn63: TNxDBTextColumn;
    NxDBTextColumn64: TNxDBTextColumn;
    NxDBTextColumn65: TNxDBTextColumn;
    NxDBTextColumn66: TNxDBTextColumn;
    NxDBTextColumn67: TNxDBTextColumn;
    NxDBImageColumn13: TNxDBImageColumn;
    NxDBMemoColumn12: TNxDBMemoColumn;
    NxDBTextColumn68: TNxDBTextColumn;
    NxDBTextColumn82: TNxDBTextColumn;
    NxDBTextColumn70: TNxDBTextColumn;
    NxDBTextColumn69: TNxDBTextColumn;
    NxDBImageColumn14: TNxDBImageColumn;
    NxDBImageColumn15: TNxDBImageColumn;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
