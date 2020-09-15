program floss;

uses
  Forms,
  main in 'main.pas' {frmMain},
  settings in 'settings.pas' {frmSettings},
  f1 in 'f1.pas' {frmF1},
  f1search in 'f1search.pas' {frmF1Search},
  weeklyio in 'weeklyio.pas' {frmWeeklyIO},
  dm1 in 'dm1.pas' {frmDM1: TDataModule},
  customer in 'customer.pas' {frmCustomer},
  qJobOrder in 'qJobOrder.pas' {qrJobOrder},
  global in 'global.pas',
  prob in 'PROB.PAS',
  weeklyExp in 'weeklyExp.pas' {frmWeeklyExpenses},
  login in 'login.pas' {frmLogin},
  qWeeklyExp in 'qWeeklyExp.pas' {qrWeeklyExp: TQuickRep},
  weeklyIncome in 'weeklyIncome.pas' {frmWeeklyIncome},
  qWeeklyIncome in 'qWeeklyIncome.pas' {qrWeeklyIncome},
  qWeeklyIO in 'qWeeklyIO.pas' {qrWeeklyIO: TQuickRep},
  xmlkaydet in 'xmlkaydet.pas',
  po in 'po.pas' {frmPO},
  qPO in 'qPO.pas' {qrPO: TQuickRep},
  qOutInv in 'qOutInv.pas' {qrOutInv: TQuickRep},
  vendtl in 'vendtl.pas' {frmVenDtl},
  salesreport in 'salesreport.pas' {frmSalesReport},
  qvendtl in 'qvendtl.pas' {qrVenDtl: TQuickRep},
  qSalRep in 'qSalRep.pas' {qrSalRep: TQuickRep},
  datelist in 'datelist.pas' {frmDateList};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TfrmF1, frmF1);
  Application.CreateForm(TfrmF1Search, frmF1Search);
  Application.CreateForm(TfrmWeeklyIO, frmWeeklyIO);
  Application.CreateForm(TfrmDM1, frmDM1);
  Application.CreateForm(TfrmCustomer, frmCustomer);
  Application.CreateForm(TqrJobOrder, qrJobOrder);
  Application.CreateForm(TfrmWeeklyExpenses, frmWeeklyExpenses);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TqrWeeklyExp, qrWeeklyExp);
  Application.CreateForm(TfrmWeeklyIncome, frmWeeklyIncome);
  Application.CreateForm(TqrWeeklyIncome, qrWeeklyIncome);
  Application.CreateForm(TqrWeeklyIO, qrWeeklyIO);
  Application.CreateForm(TfrmPO, frmPO);
  Application.CreateForm(TqrPO, qrPO);
  Application.CreateForm(TqrOutInv, qrOutInv);
  Application.CreateForm(TfrmVenDtl, frmVenDtl);
  Application.CreateForm(TfrmSalesReport, frmSalesReport);
  Application.CreateForm(TqrVenDtl, qrVenDtl);
  Application.CreateForm(TqrSalRep, qrSalRep);
  Application.CreateForm(TfrmDateList, frmDateList);
  Application.Run;
end.
