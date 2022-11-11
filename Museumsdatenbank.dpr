program Museumsdatenbank;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uObjektdaten in 'uObjektdaten.pas' {frmObjektdaten},
  uEditKollektionen in 'uEditKollektionen.pas' {frmEditKollektionen},
  uDashboardSystem in 'uDashboardSystem.pas' {frmDashboardSystem},
  uRechercheStandard in 'uRechercheStandard.pas' {frmRechercheStandard},
  uRechercheVolltext in 'uRechercheVolltext.pas' {frmRechercheVolltext},
  uBenutzereinstellungen in 'uBenutzereinstellungen.pas' {frmBenutzereinstellungen},
  uInventarisierung in 'uInventarisierung.pas' {frmInventarisierung},
  uAusstellungenWizard in 'uAusstellungenWizard.pas' {frmAusstellungenWizard},
  uEditAltObjektbezeichnung in 'uEditAltObjektbezeichnung.pas' {frmEditAltObjektbezeichnung},
  uEditDatierung in 'uEditDatierung.pas' {frmEditDatierung},
  uEditIconClass in 'uEditIconClass.pas' {frmEditIconClass},
  uEditKennzeichnungen in 'uEditKennzeichnungen.pas' {frmEditKennzeichnungen},
  uEditMainKategorien in 'uEditMainKategorien.pas' {frmEditMainKategorien},
  uEditOrt in 'uEditOrt.pas' {frmEditOrt},
  uEditPraesentationstext in 'uEditPraesentationstext.pas' {frmEditPraesentationstext},
  uEditSchlagworte in 'uEditSchlagworte.pas' {frmEditSchlagworte},
  uGBVSearch in 'uGBVSearch.pas' {frmGBVSearch},
  uGeonamesSearch in 'uGeonamesSearch.pas' {frmGeonamesSearch},
  uImportErrors in 'uImportErrors.pas' {frmImportErrors},
  uKategorieAuswahl in 'uKategorieAuswahl.pas' {frmKategorieAuswahl},
  uKategorien in 'uKategorien.pas' {frmKategorien},
  uSystemEditSammlungsbereiche in 'uSystemEditSammlungsbereiche.pas' {frmSystemEditSammlungsbereiche},
  uDigitalisatViewer in 'uDigitalisatViewer.pas' {frmDigitalisatViewer},
  uStandortverwaltung in 'uStandortverwaltung.pas' {frmStandortverwaltung},
  uStandorteIDListe in 'uStandorteIDListe.pas' {frmStandorteIDListe},
  uKollektionenBenutzerauswahl in 'uKollektionenBenutzerauswahl.pas' {frmKollektionenBenutzerauswahl},
  uAusstellungsManagement in 'uAusstellungsManagement.pas' {frmAusstellungsManagement},
  uConstants in 'Units\uConstants.pas',
  uFunctions in 'Units\uFunctions.pas',
  uLogging in 'Units\uLogging.pas',
  uMDBObjects in 'Units\uMDBObjects.pas',
  uVariables in 'Units\uVariables.pas',
  SysDat in 'Units\SysDat.pas',
  uEditLiteratur in 'uEditLiteratur.pas' {frmEditLiteratur},
  uReportingDigitalisateAuswahl in 'uReportingDigitalisateAuswahl.pas' {frmReportingDigitalisateAuswahl},
  uObjektAusstellungdaten in 'uObjektAusstellungdaten.pas' {frmObjektAusstellungdaten},
  uBenutzerverwaltung in 'uBenutzerverwaltung.pas' {frmBenutzerverwaltung},
  uEditMainStilEinordnungen in 'uEditMainStilEinordnungen.pas' {frmEditMainStilEinordnungen},
  uSysThesauren in 'uSysThesauren.pas' {frmSysThesauren},
  uStilistischeEinordnungenAuswahl in 'uStilistischeEinordnungenAuswahl.pas' {frmStilistischeEinordnungenAuswahl},
  uSysAdressen in 'uSysAdressen.pas' {frmSysAdressen},
  uEditRelevantPerson in 'uEditRelevantPerson.pas' {frmEditRelevantPerson},
  uPraesentationstextSchlagworte in 'uPraesentationstextSchlagworte.pas' {frmPraesentationstextSchlagworte},
  uEditKernfelder in 'uEditKernfelder.pas' {frmEditKernfelder},
  uEditLookAndFeel in 'uEditLookAndFeel.pas' {frmEditLookAndFeel},
  uDNBSearch in 'uDNBSearch.pas' {frmDNBSearch},
  uWiedervorlage_Benutzer in 'uWiedervorlage_Benutzer.pas' {frmWiedervorlage_Benutzer},
  uApplikationInfos in 'uApplikationInfos.pas' {frmApplikationInfos},
  uReporting in 'uReporting.pas' {frmReporting},
  uDokumente in 'uDokumente.pas' {frmDokumente},
  uDokumenteWizard in 'uDokumenteWizard.pas' {frmDokumenteWizard},
  uDigitalisateImport in 'uDigitalisateImport.pas' {frmDigitalisateImport},
  uDokumenteAlt in 'uDokumenteAlt.pas' {frmDokumenteAlt},
  uRechercheSavegames in 'uRechercheSavegames.pas' {frmRechercheSavegames},
  uNotizen in 'uNotizen.pas' {frmNotizen},
  uDOIWizard in 'uDOIWizard.pas' {frmDOIWizard},
  uAusstellungsDB in 'uAusstellungsDB.pas' {frmAusstellungsDB},
  uExport in 'uExport.pas' {frmExport},
  uRegister in 'uRegister.pas' {frmRegister},
  uGlobalErsetzen in 'uGlobalErsetzen.pas' {frmGlobalErsetzen},
  uHerstellernachweis in 'uHerstellernachweis.pas' {frmHerstellernachweis},
  uEditNormdatensaetze in 'uEditNormdatensaetze.pas' {frmEditNormdatensaetze},
  uLiteraturQuellenWizard in 'uLiteraturQuellenWizard.pas' {frmLiteraturQuellenWizard},
  uNormdatensatzSuche in 'uNormdatensatzSuche.pas' {frmNormdatensatzSuche},
  uMediaManagement in 'uMediaManagement.pas' {frmMediaManagement},
  uPersonenKoerperschaften in 'uPersonenKoerperschaften.pas' {frmPersonenKoerperschaften},
  uData_REST in 'DataModules\uData_REST.pas' {dmData_REST: TDataModule},
  uDataADB_Reporting in 'DataModules\uDataADB_Reporting.pas' {dmADB_Reporting: TDataModule},
  uDataAusstellungsdatenbank in 'DataModules\uDataAusstellungsdatenbank.pas' {dmAusstellungsdatenbank: TDataModule},
  uDataBestandsdb in 'DataModules\uDataBestandsdb.pas' {dmDataBestandsdb: TDataModule},
  uDataDigitalisate in 'DataModules\uDataDigitalisate.pas' {dmDigitalisate: TDataModule},
  uDataDruck in 'DataModules\uDataDruck.pas' {dmDataDruck},
  uDataMediaManagement in 'DataModules\uDataMediaManagement.pas' {dmDataMediaManagement: TDataModule},
  uDataReporting in 'DataModules\uDataReporting.pas' {dmDataReporting},
  uDataSecurity in 'DataModules\uDataSecurity.pas' {dmSecurity: TDataModule},
  uDataStVW in 'DataModules\uDataStVW.pas' {dmDataStVW: TDataModule},
  uSNDB_Anfrage in 'uSNDB_Anfrage.pas' {frmSNDB_Anfrage},
  uEditProvenienz in 'uEditProvenienz.pas' {frmEditProvenienz},
  uErfassung in 'uErfassung.pas' {frmErfassung},
  uSysSNDBAnfragen in 'uSysSNDBAnfragen.pas' {frmSysSNDBAnfragen},
  uEditProvenienzWerte in 'uEditProvenienzWerte.pas' {frmEditProvenienzWerte},
  uFeedback in 'uFeedback.pas' {frmFeedback},
  uReportingExpert in 'uReportingExpert.pas' {frmReportingExpert},
  uInventarnummerHistorie in 'uInventarnummerHistorie.pas' {frmInventarnummerHistorie},
  uArchivierung in 'uArchivierung.pas' {frmArchivierung},
  uEditAbmessungenNeu in 'uEditAbmessungenNeu.pas' {frmEditAbmessungenNeu},
  uErfassungEditRelevantePerson in 'uErfassungEditRelevantePerson.pas' {frmErfassungEditRelevantePerson},
  uEditProvenienzDatierungen in 'uEditProvenienzDatierungen.pas' {frmEditProvenienzDatierungen},
  uGridPanelTest in 'uGridPanelTest.pas' {frmGridPanelTest},
  uSysNachschlagelisten in 'uSysNachschlagelisten.pas' {frmSysNachschlagelisten},
  uDataKollektionen in 'DataModules\uDataKollektionen.pas' {dmDataKollektionen: TDataModule},
  uDataAdressManagement in 'DataModules\uDataAdressManagement.pas' {dmAdressManagement: TDataModule},
  uEditProvenienzAdresse in 'uEditProvenienzAdresse.pas' {frmEditProvenienzAdresse},
  F_SPND in 'F_SPND.pas' {SPNDForm},
  uCurrentUsers in 'uCurrentUsers.pas' {frmCurrentUsers},
  F_StandorteIDListe in 'F_StandorteIDListe.pas' {FormStandorteIDListe},
  uDigitalisateViewer in 'uDigitalisateViewer.pas' {frmDigitalisateViewer},
  uReportingAlt in 'uReportingAlt.pas' {frmReportingAlt},
  uDatensatzkopierenAuswahl in 'uDatensatzkopierenAuswahl.pas' {frmDatensatzkopierenAuswahl},
  uEditOrteNeu in 'uEditOrteNeu.pas' {frmEditOrteNeu},
  uSNDB_Ort_Anfrage in 'uSNDB_Ort_Anfrage.pas' {frmSNDB_Ort_Anfrage},
  uSysSNDBOrtAnfragen in 'uSysSNDBOrtAnfragen.pas' {frmSysSNDBOrtAnfragen},
  uChangeLog in 'uChangeLog.pas' {frmChangeLog},
  uMailing in '..\Units\uMailing.pas',
  uSysIndex in 'uSysIndex.pas' {frmSysIndex},
  DBFunctions in 'Units\DBFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmObjektdaten, frmObjektdaten);
  Application.CreateForm(TfrmEditKollektionen, frmEditKollektionen);
  Application.CreateForm(TfrmDashboardSystem, frmDashboardSystem);
  Application.CreateForm(TfrmRechercheStandard, frmRechercheStandard);
  Application.CreateForm(TfrmRechercheVolltext, frmRechercheVolltext);
  Application.CreateForm(TfrmBenutzereinstellungen, frmBenutzereinstellungen);
  Application.CreateForm(TfrmInventarisierung, frmInventarisierung);
  Application.CreateForm(TfrmAusstellungenWizard, frmAusstellungenWizard);
  Application.CreateForm(TfrmEditAltObjektbezeichnung, frmEditAltObjektbezeichnung);
  Application.CreateForm(TfrmEditDatierung, frmEditDatierung);
  Application.CreateForm(TfrmEditIconClass, frmEditIconClass);
  Application.CreateForm(TfrmEditKennzeichnungen, frmEditKennzeichnungen);
  Application.CreateForm(TfrmEditMainKategorien, frmEditMainKategorien);
  Application.CreateForm(TfrmEditOrt, frmEditOrt);
  Application.CreateForm(TfrmEditPraesentationstext, frmEditPraesentationstext);
  Application.CreateForm(TfrmEditSchlagworte, frmEditSchlagworte);
  Application.CreateForm(TfrmGBVSearch, frmGBVSearch);
  Application.CreateForm(TfrmGeonamesSearch, frmGeonamesSearch);
  Application.CreateForm(TfrmImportErrors, frmImportErrors);
  Application.CreateForm(TfrmKategorieAuswahl, frmKategorieAuswahl);
  Application.CreateForm(TfrmKategorien, frmKategorien);
  Application.CreateForm(TfrmTileControlTest, frmTileControlTest);
  Application.CreateForm(TfrmSystemEditSammlungsbereiche, frmSystemEditSammlungsbereiche);
  Application.CreateForm(TfrmDigitalisatViewer, frmDigitalisatViewer);
  Application.CreateForm(TfrmStandortverwaltung, frmStandortverwaltung);
  Application.CreateForm(TfrmStandorteIDListe, frmStandorteIDListe);
  Application.CreateForm(TfrmKollektionenBenutzerauswahl, frmKollektionenBenutzerauswahl);
  Application.CreateForm(TfrmAusstellungsManagement, frmAusstellungsManagement);
  Application.CreateForm(TfrmEditLiteratur, frmEditLiteratur);
  Application.CreateForm(TfrmReportingDigitalisateAuswahl, frmReportingDigitalisateAuswahl);
  Application.CreateForm(TfrmObjektAusstellungdaten, frmObjektAusstellungdaten);
  Application.CreateForm(TfrmBenutzerverwaltung, frmBenutzerverwaltung);
  Application.CreateForm(TfrmEditMainStilEinordnungen, frmEditMainStilEinordnungen);
  Application.CreateForm(TfrmSysThesauren, frmSysThesauren);
  Application.CreateForm(TfrmStilistischeEinordnungenAuswahl, frmStilistischeEinordnungenAuswahl);
  Application.CreateForm(TfrmSysAdressen, frmSysAdressen);
  Application.CreateForm(TfrmEditRelevantPerson, frmEditRelevantPerson);
  Application.CreateForm(TfrmPraesentationstextSchlagworte, frmPraesentationstextSchlagworte);
  Application.CreateForm(TfrmEditKernfelder, frmEditKernfelder);
  Application.CreateForm(TfrmEditLookAndFeel, frmEditLookAndFeel);
  Application.CreateForm(TfrmDNBSearch, frmDNBSearch);
  Application.CreateForm(TfrmWiedervorlage_Benutzer, frmWiedervorlage_Benutzer);
  Application.CreateForm(TfrmApplikationInfos, frmApplikationInfos);
  Application.CreateForm(TfrmReporting, frmReporting);
  Application.CreateForm(TfrmDokumente, frmDokumente);
  Application.CreateForm(TfrmDokumenteWizard, frmDokumenteWizard);
  Application.CreateForm(TfrmDigitalisateImport, frmDigitalisateImport);
  Application.CreateForm(TfrmDokumenteAlt, frmDokumenteAlt);
  Application.CreateForm(TfrmRechercheSavegames, frmRechercheSavegames);
  Application.CreateForm(TfrmNotizen, frmNotizen);
  Application.CreateForm(TfrmDOIWizard, frmDOIWizard);
  Application.CreateForm(TfrmAusstellungsDB, frmAusstellungsDB);
  Application.CreateForm(TfrmExport, frmExport);
  Application.CreateForm(TfrmRegister, frmRegister);
  Application.CreateForm(TfrmGlobalErsetzen, frmGlobalErsetzen);
  Application.CreateForm(TfrmHerstellernachweis, frmHerstellernachweis);
  Application.CreateForm(TfrmEditNormdatensaetze, frmEditNormdatensaetze);
  Application.CreateForm(TfrmLiteraturQuellenWizard, frmLiteraturQuellenWizard);
  Application.CreateForm(TfrmNormdatensatzSuche, frmNormdatensatzSuche);
  Application.CreateForm(T_frmRegistrierkonvolutInventarisierung, _frmRegistrierkonvolutInventarisierung);
  Application.CreateForm(TfrmMediaManagement, frmMediaManagement);
  Application.CreateForm(TfrmPersonenKoerperschaften, frmPersonenKoerperschaften);
  Application.CreateForm(TdmData_REST, dmData_REST);
  Application.CreateForm(TdmADB_Reporting, dmADB_Reporting);
  Application.CreateForm(TdmAusstellungsdatenbank, dmAusstellungsdatenbank);
  Application.CreateForm(TdmDataBestandsdb, dmDataBestandsdb);
  Application.CreateForm(TdmDigitalisate, dmDigitalisate);
  Application.CreateForm(TdmDataDruck, dmDataDruck);
  Application.CreateForm(TdmDataMediaManagement, dmDataMediaManagement);
  Application.CreateForm(TdmDataReporting, dmDataReporting);
  Application.CreateForm(TdmSecurity, dmSecurity);
  Application.CreateForm(TdmDataStVW, dmDataStVW);
  Application.CreateForm(TfrmSNDB_Anfrage, frmSNDB_Anfrage);
  Application.CreateForm(TfrmEditProvenienz, frmEditProvenienz);
  Application.CreateForm(TfrmErfassung, frmErfassung);
  Application.CreateForm(TfrmSysSNDBAnfragen, frmSysSNDBAnfragen);
  Application.CreateForm(TfrmEditProvenienzWerte, frmEditProvenienzWerte);
  Application.CreateForm(TfrmFeedback, frmFeedback);
  Application.CreateForm(TfrmReportingExpert, frmReportingExpert);
  Application.CreateForm(TfrmInventarnummerHistorie, frmInventarnummerHistorie);
  Application.CreateForm(TfrmArchivierung, frmArchivierung);
  Application.CreateForm(TfrmEditAbmessungenNeu, frmEditAbmessungenNeu);
  Application.CreateForm(TfrmErfassungEditRelevantePerson, frmErfassungEditRelevantePerson);
  Application.CreateForm(TfrmEditProvenienzDatierungen, frmEditProvenienzDatierungen);
  Application.CreateForm(TfrmGridPanelTest, frmGridPanelTest);
  Application.CreateForm(TfrmSysNachschlagelisten, frmSysNachschlagelisten);
  Application.CreateForm(TdmDataKollektionen, dmDataKollektionen);
  Application.CreateForm(TdmAdressManagement, dmAdressManagement);
  Application.CreateForm(TfrmEditProvenienzAdresse, frmEditProvenienzAdresse);
  Application.CreateForm(TSPNDForm, SPNDForm);
  Application.CreateForm(TfrmCurrentUsers, frmCurrentUsers);
  Application.CreateForm(TFormStandorteIDListe, FormStandorteIDListe);
  Application.CreateForm(TfrmDigitalisateViewer, frmDigitalisateViewer);
  Application.CreateForm(TfrmReportingAlt, frmReportingAlt);
  Application.CreateForm(TfrmDatensatzkopierenAuswahl, frmDatensatzkopierenAuswahl);
  Application.CreateForm(TfrmEditOrteNeu, frmEditOrteNeu);
  Application.CreateForm(TfrmSNDB_Ort_Anfrage, frmSNDB_Ort_Anfrage);
  Application.CreateForm(TfrmSysSNDBOrtAnfragen, frmSysSNDBOrtAnfragen);
  Application.CreateForm(TfrmChangeLog, frmChangeLog);
  Application.CreateForm(TfrmSysIndex, frmSysIndex);
  Application.Run;
end.
