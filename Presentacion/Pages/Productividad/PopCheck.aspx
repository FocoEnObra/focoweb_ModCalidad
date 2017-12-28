<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PopCheck.aspx.vb" Inherits="Presentacion.PopCheck" %>

<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
table{max-width:100%;background-color:transparent}table{border-collapse:collapse;border-spacing:0}*,:after,:before{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*{text-shadow:none!important;color:#000!important;background:transparent!important;box-shadow:none!important}td,th{padding:0}
span.dx-vam, span.dx-vat, span.dx-vab, a.dx-vam, a.dx-vat, a.dx-vab 
{ 
    line-height: 100%; 
    padding: 2px 0;
    text-decoration: inherit;
}

.dx-vam, .dx-valm { vertical-align: middle; }
.dx-vam, .dx-vat, .dx-vab { display: inline-block!important; }
a.dxbButtonSys
{
    border: 0;
    background: none;
    padding: 0;
}
a.dxbButton_MetropolisBlue
{
    color: #0072C6;
    text-decoration: underline;
}
.dxbButtonSys /*Bootstrap correction*/
{
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
.dxbButtonSys
{
	cursor: pointer;
	display: inline-block;
	text-align: center;
	white-space: nowrap;
}
.dxbButton_MetropolisBlue
{
    color: #333333;
    border: 1px solid #c0c0c0;
    background-color: white;
    padding: 1px;
    font: 12px 'Segoe UI', Helvetica, 'Droid Sans', Tahoma, Geneva, sans-serif;
}

a,
a:hover {
    text-decoration: none
}

a{color:#4083a9;text-decoration:none}a,a:visited{text-decoration:underline}a{background:0 0}
a.dxbButtonSys > span
{
    text-decoration: inherit;
}

.dxeTextBoxDefaultWidthSys,
.dxeButtonEditSys 
{
    width: 170px;
}

.dxeTextBoxSys, 
.dxeMemoSys 
{
    border-collapse:separate!important;
}

.dxeTrackBar_MetropolisBlue,
.dxeIRadioButton_MetropolisBlue,
.dxeButtonEdit_MetropolisBlue,
.dxeTextBox_MetropolisBlue,
.dxeRadioButtonList_MetropolisBlue,
.dxeCheckBoxList_MetropolisBlue,
.dxeMemo_MetropolisBlue,
.dxeListBox_MetropolisBlue,
.dxeCalendar_MetropolisBlue,
.dxeColorTable_MetropolisBlue
{
    -webkit-tap-highlight-color: transparent;
}
.dxeTextBox_MetropolisBlue,
.dxeButtonEdit_MetropolisBlue,
.dxeIRadioButton_MetropolisBlue,
.dxeRadioButtonList_MetropolisBlue,
.dxeCheckBoxList_MetropolisBlue
{
    cursor: default;
}
.dxeTextBox_MetropolisBlue
{
    background-color: white;
    border: 1px solid #c0c0c0;
    font: 12px 'Segoe UI', Helvetica, 'Droid Sans', Tahoma, Geneva, sans-serif;
}

.dxeTextBoxSys td.dxic
{
    padding: 3px 3px 2px 3px;
    overflow: hidden;
}

.dxeButtonEditSys .dxeEditAreaSys,
.dxeButtonEditSys td.dxic,
.dxeTextBoxSys td.dxic,
.dxeMemoSys td,
.dxeEditAreaSys
{
	width: 100%;
}

.dxFirefox .dxeTextBox_MetropolisBlue td.dxic,
.dxFirefox .dxeButtonEdit_MetropolisBlue td.dxic,
.dxFirefox .dxeButtonEdit_MetropolisBlue[cellspacing="0"] td.dxic,
.dxeTextBox_MetropolisBlue td.dxic,
.dxeButtonEdit_MetropolisBlue td.dxic,
.dxeButtonEdit_MetropolisBlue[cellspacing="0"] td.dxic
{
    padding: 1px 3px 2px 3px;
}

.dxeMemoEditAreaSys, /*Bootstrap correction*/
input[type="text"].dxeEditAreaSys, /*Bootstrap correction*/
input[type="password"].dxeEditAreaSys /*Bootstrap correction*/
{
    display: block;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    -webkit-transition: none;
    -moz-transition: none;
    -o-transition: none;
    transition: none;
	-webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}
.dxeEditAreaSys,
.dxeMemoEditAreaSys, /*Bootstrap correction*/
input[type="text"].dxeEditAreaSys, /*Bootstrap correction*/
input[type="password"].dxeEditAreaSys /*Bootstrap correction*/
{
    font: inherit;
    line-height: normal;
    outline: 0;
}

input[type="text"].dxeEditAreaSys, /*Bootstrap correction*/
input[type="password"].dxeEditAreaSys /*Bootstrap correction*/
{
    margin-top: 0;
    margin-bottom: 0;
}
.dxeEditAreaSys,
input[type="text"].dxeEditAreaSys, /*Bootstrap correction*/
input[type="password"].dxeEditAreaSys /*Bootstrap correction*/
{
    padding: 0px 1px 0px 0px; /* B146658 */
}
noindex:-o-prefocus,
input[type="text"].dxeEditArea_MetropolisBlue,
input[type="password"].dxeEditArea_MetropolisBlue
{
    margin-top: 1px;
    margin-bottom: 0;
}
input[type="text"].dxeEditArea_MetropolisBlue,
input[type="password"].dxeEditArea_MetropolisBlue
{
    margin-top: 0;
    margin-bottom: 0;
}
.dxic .dxeEditAreaSys
{
	padding: 0px 1px 0px 0px;
}
.dxeTextBox_MetropolisBlue .dxeEditArea_MetropolisBlue
{
    background-color: white;
}
.dxeEditAreaSys 
{
    border: 0px!important;
    background-position: 0 0; /* iOS Safari */
    -webkit-box-sizing: content-box; /*Bootstrap correction*/
    -moz-box-sizing: content-box; /*Bootstrap correction*/
    box-sizing: content-box; /*Bootstrap correction*/
}
.dxeEditArea_MetropolisBlue,
body input.dxeEditArea_MetropolisBlue
{
    color: #333333;
}
.dxeEditArea_MetropolisBlue
{
    border: 1px solid #A0A0A0;
}
button,input,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}
.dxeButtonEdit_MetropolisBlue
{
    background-color: white;
    border: 1px solid #c0c0c0;
    width: 170px;
    font: 12px 'Segoe UI', Helvetica, 'Droid Sans', Tahoma, Geneva, sans-serif;
    border-collapse: separate;
    border-spacing: 0;
}
.dxeButtonEditSys td.dxic 
{
    padding: 2px 2px 1px 2px;
    overflow: hidden;
}
.dxeButtonEdit_MetropolisBlue .dxeEditArea_MetropolisBlue,
.dxeButtonEdit_MetropolisBlue td.dxic
{
    width: 100%;
}
.dxeButtonEdit_MetropolisBlue .dxeEditArea_MetropolisBlue
{
    background-color: white;
}

.dxeButtonEditSys .dxeButton,
.dxeButtonEditSys .dxeButtonLeft
{
    line-height: 100%;
}

.dxeButtonEditButton_MetropolisBlue
{
    padding: 0px 2px 0px 3px;
}
.dxeButtonEditButton_MetropolisBlue,
.dxeCalendarButton_MetropolisBlue,
.dxeSpinIncButton_MetropolisBlue,
.dxeSpinDecButton_MetropolisBlue,
.dxeSpinLargeIncButton_MetropolisBlue,
.dxeSpinLargeDecButton_MetropolisBlue,
.dxeColorEditButton_MetropolisBlue
{
    background-color: white;
    vertical-align: middle;
    cursor: pointer;
    text-align: center;
    white-space: nowrap;
}
.dxEditors_edtError_MetropolisBlue,
.dxEditors_edtCalendarPrevYear_MetropolisBlue,
.dxEditors_edtCalendarPrevYearDisabled_MetropolisBlue,
.dxEditors_edtCalendarPrevMonth_MetropolisBlue,
.dxEditors_edtCalendarPrevMonthDisabled_MetropolisBlue,
.dxEditors_edtCalendarNextMonth_MetropolisBlue,
.dxEditors_edtCalendarNextMonthDisabled_MetropolisBlue,
.dxEditors_edtCalendarNextYear_MetropolisBlue,
.dxEditors_edtCalendarNextYearDisabled_MetropolisBlue,
.dxEditors_edtCalendarFNPrevYear_MetropolisBlue,
.dxEditors_edtCalendarFNNextYear_MetropolisBlue,
.dxEditors_edtCalendarFNPrevPeriod_MetropolisBlue,
.dxEditors_edtCalendarFNNextPeriod_MetropolisBlue,
.dxEditors_edtEllipsis_MetropolisBlue,
.dxEditors_edtEllipsisDisabled_MetropolisBlue,
.dxEditors_edtDropDown_MetropolisBlue,
.dxEditors_edtDropDownDisabled_MetropolisBlue,
.dxEditors_edtSpinEditIncrementImage_MetropolisBlue,
.dxEditors_edtSpinEditIncrementImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditDecrementImage_MetropolisBlue,
.dxEditors_edtSpinEditDecrementImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditLargeIncImage_MetropolisBlue,
.dxEditors_edtSpinEditLargeIncImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditLargeDecImage_MetropolisBlue,
.dxEditors_edtSpinEditLargeDecImageDisabled_MetropolisBlue
{
	display:block;
	margin:auto;
}
.dxEditors_edtDropDown_MetropolisBlue
{
    background-position: -36px -158px;
    width: 10px;
    height: 14px;
}
.dxeButtonEditButtonHover_MetropolisBlue .dxEditors_edtClear_MetropolisBlue,
.dxeButtonEditButtonHover_MetropolisBlue .dxEditors_edtDropDown_MetropolisBlue,
.dxeButtonEditButtonHover_MetropolisBlue .dxEditors_edtEllipsis_MetropolisBlue,
.dxeButtonEditButtonPressed_MetropolisBlue .dxEditors_edtDropDown_MetropolisBlue,
.dxeButtonEditButtonPressed_MetropolisBlue .dxEditors_edtEllipsis_MetropolisBlue,
.dxEditors_caRefresh_MetropolisBlue,
.dxEditors_edtBinaryImageDelete_MetropolisBlue,
.dxEditors_edtBinaryImageOpenDialog_MetropolisBlue,
.dxEditors_edtCalendarFastNavBackToPrevMode_MetropolisBlue,
.dxEditors_edtCalendarFastNavBackToPrevModeRtl_MetropolisBlue,
.dxEditors_edtCalendarFNNextPeriod_MetropolisBlue,
.dxEditors_edtCalendarFNNextYear_MetropolisBlue,
.dxEditors_edtCalendarFNPrevPeriod_MetropolisBlue,
.dxEditors_edtCalendarFNPrevYear_MetropolisBlue,
.dxEditors_edtCalendarNextMonth_MetropolisBlue,
.dxEditors_edtCalendarNextMonthDisabled_MetropolisBlue,
.dxEditors_edtCalendarNextYear_MetropolisBlue,
.dxEditors_edtCalendarNextYearDisabled_MetropolisBlue,
.dxEditors_edtCalendarPrevMonth_MetropolisBlue,
.dxEditors_edtCalendarPrevMonthDisabled_MetropolisBlue,
.dxEditors_edtCalendarPrevYear_MetropolisBlue,
.dxEditors_edtCalendarPrevYearDisabled_MetropolisBlue,
.dxEditors_edtClear_MetropolisBlue,
.dxEditors_edtDETSClockFace_MetropolisBlue,
.dxEditors_edtDETSHourHand_MetropolisBlue,
.dxEditors_edtDETSMinuteHand_MetropolisBlue,
.dxEditors_edtDETSSecondHand_MetropolisBlue,
.dxEditors_edtDropDown_MetropolisBlue,
.dxEditors_edtDropDownDisabled_MetropolisBlue,
.dxEditors_edtEllipsis_MetropolisBlue,
.dxEditors_edtEllipsisDisabled_MetropolisBlue,
.dxEditors_edtError_MetropolisBlue,
.dxEditors_edtListBoxFilterBtn_MetropolisBlue,
.dxEditors_edtListBoxFilterBtnDisabled_MetropolisBlue,
.dxEditors_edtListBoxHideFilterBtn_MetropolisBlue,
.dxEditors_edtListBoxHideFilterBtnDisabled_MetropolisBlue,
.dxEditors_edtListBoxHideFilterBtnRtl_MetropolisBlue,
.dxEditors_edtListBoxHideFilterBtnRtlDisabled_MetropolisBlue,
.dxEditors_edtSpinEditDecrementImage_MetropolisBlue,
.dxEditors_edtSpinEditDecrementImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditIncrementImage_MetropolisBlue,
.dxEditors_edtSpinEditIncrementImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditLargeDecImage_MetropolisBlue,
.dxEditors_edtSpinEditLargeDecImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditLargeIncImage_MetropolisBlue,
.dxEditors_edtSpinEditLargeIncImageDisabled_MetropolisBlue,
.dxEditors_edtTBDecBtn_MetropolisBlue,
.dxEditors_edtTBDecBtnDisabled_MetropolisBlue,
.dxEditors_edtTBDecBtnHover_MetropolisBlue,
.dxEditors_edtTBDecBtnPressed_MetropolisBlue,
.dxEditors_edtTBIncBtn_MetropolisBlue,
.dxEditors_edtTBIncBtnDisabled_MetropolisBlue,
.dxEditors_edtTBIncBtnHover_MetropolisBlue,
.dxEditors_edtTBIncBtnPressed_MetropolisBlue,
.dxEditors_edtTokenBoxTokenRemoveButton_MetropolisBlue,
.dxEditors_edtTokenBoxTokenRemoveButtonDisabled_MetropolisBlue,
.dxEditors_fcadd_MetropolisBlue,
.dxEditors_fcaddhot_MetropolisBlue,
.dxEditors_fcgroupaddcondition_MetropolisBlue,
.dxEditors_fcgroupaddgroup_MetropolisBlue,
.dxEditors_fcgroupand_MetropolisBlue,
.dxEditors_fcgroupnotand_MetropolisBlue,
.dxEditors_fcgroupnotor_MetropolisBlue,
.dxEditors_fcgroupor_MetropolisBlue,
.dxEditors_fcgroupremove_MetropolisBlue,
.dxEditors_fcopany_MetropolisBlue,
.dxEditors_fcopavg_MetropolisBlue,
.dxEditors_fcopbegin_MetropolisBlue,
.dxEditors_fcopbetween_MetropolisBlue,
.dxEditors_fcopblank_MetropolisBlue,
.dxEditors_fcopcontain_MetropolisBlue,
.dxEditors_fcopcount_MetropolisBlue,
.dxEditors_fcopend_MetropolisBlue,
.dxEditors_fcopequal_MetropolisBlue,
.dxEditors_fcopexists_MetropolisBlue,
.dxEditors_fcopgreater_MetropolisBlue,
.dxEditors_fcopgreaterorequal_MetropolisBlue,
.dxEditors_fcopless_MetropolisBlue,
.dxEditors_fcoplessorequal_MetropolisBlue,
.dxEditors_fcoplike_MetropolisBlue,
.dxEditors_fcopmax_MetropolisBlue,
.dxEditors_fcopmin_MetropolisBlue,
.dxEditors_fcopnotany_MetropolisBlue,
.dxEditors_fcopnotbetween_MetropolisBlue,
.dxEditors_fcopnotblank_MetropolisBlue,
.dxEditors_fcopnotcontain_MetropolisBlue,
.dxEditors_fcopnotequal_MetropolisBlue,
.dxEditors_fcopnotlike_MetropolisBlue,
.dxEditors_fcopsingle_MetropolisBlue,
.dxEditors_fcopsum_MetropolisBlue,
.dxEditors_fcoptypefield_MetropolisBlue,
.dxEditors_fcoptypefieldhot_MetropolisBlue,
.dxEditors_fcoptypevalue_MetropolisBlue,
.dxEditors_fcoptypevaluehot_MetropolisBlue,
.dxEditors_fcremove_MetropolisBlue,
.dxEditors_fcremovehot_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBHSys .dxeFocusedMDHSys .dxEditors_edtTBMainDH_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBHSys .dxeFocusedMDHSys .dxEditors_edtTBMainDHHover_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBHSys .dxeFocusedMDHSys .dxEditors_edtTBMainDHPressed_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBHSys .dxeFocusedSDHSys .dxEditors_edtTBSecondaryDH_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBHSys .dxeFocusedSDHSys .dxEditors_edtTBSecondaryDHHover_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBHSys .dxeFocusedSDHSys .dxEditors_edtTBSecondaryDHPressed_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBVSys .dxeFocusedMDHSys .dxEditors_edtTBMainDH_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBVSys .dxeFocusedMDHSys .dxEditors_edtTBMainDHHover_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBVSys .dxeFocusedMDHSys .dxEditors_edtTBMainDHPressed_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBVSys .dxeFocusedSDHSys .dxEditors_edtTBSecondaryDH_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBVSys .dxeFocusedSDHSys .dxEditors_edtTBSecondaryDHHover_MetropolisBlue,
.dxeFocused_MetropolisBlue .dxeTBVSys .dxeFocusedSDHSys .dxEditors_edtTBSecondaryDHPressed_MetropolisBlue,
.dxeSpinDecButtonHover_MetropolisBlue .dxEditors_edtSpinEditDecrementImage_MetropolisBlue,
.dxeSpinDecButtonPressed_MetropolisBlue .dxEditors_edtSpinEditDecrementImage_MetropolisBlue,
.dxeSpinIncButtonHover_MetropolisBlue .dxEditors_edtSpinEditIncrementImage_MetropolisBlue,
.dxeSpinIncButtonPressed_MetropolisBlue .dxEditors_edtSpinEditIncrementImage_MetropolisBlue,
.dxeSpinLargeDecButtonHover_MetropolisBlue .dxEditors_edtSpinEditLargeDecImage_MetropolisBlue,
.dxeSpinLargeDecButtonPressed_MetropolisBlue .dxEditors_edtSpinEditLargeDecImage_MetropolisBlue,
.dxeSpinLargeIncButtonHover_MetropolisBlue .dxEditors_edtSpinEditLargeIncImage_MetropolisBlue,
.dxeSpinLargeIncButtonPressed_MetropolisBlue .dxEditors_edtSpinEditLargeIncImage_MetropolisBlue,
.dxeTBHSys .dxEditors_edtTBMainDH_MetropolisBlue,
.dxeTBHSys .dxEditors_edtTBMainDHDisabled_MetropolisBlue,
.dxeTBHSys .dxEditors_edtTBMainDHHover_MetropolisBlue,
.dxeTBHSys .dxEditors_edtTBMainDHPressed_MetropolisBlue,
.dxeTBHSys .dxEditors_edtTBSecondaryDH_MetropolisBlue,
.dxeTBHSys .dxEditors_edtTBSecondaryDHDisabled_MetropolisBlue,
.dxeTBHSys .dxEditors_edtTBSecondaryDHHover_MetropolisBlue,
.dxeTBHSys .dxEditors_edtTBSecondaryDHPressed_MetropolisBlue,
.dxeTBVSys .dxEditors_edtTBMainDH_MetropolisBlue,
.dxeTBVSys .dxEditors_edtTBMainDHDisabled_MetropolisBlue,
.dxeTBVSys .dxEditors_edtTBMainDHHover_MetropolisBlue,
.dxeTBVSys .dxEditors_edtTBMainDHPressed_MetropolisBlue,
.dxeTBVSys .dxEditors_edtTBSecondaryDH_MetropolisBlue,
.dxeTBVSys .dxEditors_edtTBSecondaryDHDisabled_MetropolisBlue,
.dxeTBVSys .dxEditors_edtTBSecondaryDHHover_MetropolisBlue,
.dxeTBVSys .dxEditors_edtTBSecondaryDHPressed_MetropolisBlue
{
    background-image: url('<%=WebResource("DevExpress.Web.ASPxThemes.App_Themes.MetropolisBlue.Editors.sprite.png")%>');
    background-repeat: no-repeat;
    background-color: transparent;
}
.dxEditors_edtError_MetropolisBlue,
.dxEditors_edtCalendarPrevYear_MetropolisBlue,
.dxEditors_edtCalendarPrevYearDisabled_MetropolisBlue,
.dxEditors_edtCalendarPrevMonth_MetropolisBlue,
.dxEditors_edtCalendarPrevMonthDisabled_MetropolisBlue,
.dxEditors_edtCalendarNextMonth_MetropolisBlue,
.dxEditors_edtCalendarNextMonthDisabled_MetropolisBlue,
.dxEditors_edtCalendarNextYear_MetropolisBlue,
.dxEditors_edtCalendarNextYearDisabled_MetropolisBlue,
.dxEditors_edtCalendarFNPrevYear_MetropolisBlue,
.dxEditors_edtCalendarFNNextYear_MetropolisBlue,
.dxEditors_edtCalendarFNPrevPeriod_MetropolisBlue,
.dxEditors_edtCalendarFNNextPeriod_MetropolisBlue,
.dxEditors_edtEllipsis_MetropolisBlue,
.dxEditors_edtEllipsisDisabled_MetropolisBlue,
.dxEditors_edtDropDown_MetropolisBlue,
.dxEditors_edtDropDownDisabled_MetropolisBlue,
.dxEditors_edtSpinEditIncrementImage_MetropolisBlue,
.dxEditors_edtSpinEditIncrementImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditDecrementImage_MetropolisBlue,
.dxEditors_edtSpinEditDecrementImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditLargeIncImage_MetropolisBlue,
.dxEditors_edtSpinEditLargeIncImageDisabled_MetropolisBlue,
.dxEditors_edtSpinEditLargeDecImage_MetropolisBlue,
.dxEditors_edtSpinEditLargeDecImageDisabled_MetropolisBlue
{
	display:block;
	margin:auto;
}
.dxeMemo_MetropolisBlue
{
    background-color: white;
    border: 1px solid #c0c0c0;
    font: 12px 'Segoe UI', Helvetica, 'Droid Sans', Tahoma, Geneva, sans-serif;
}
.dxeMemoSys td 
{
    padding: 0px 6px 0px 0px;
}
.dxeMemoSys textarea /*Bootstrap correction*/
{
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
.dxeMemoEditAreaSys /*Bootstrap correction*/
{
    height: auto;
    color: black;
}
.dxeMemoEditAreaSys 
{
    padding: 3px 3px 0px 3px;
    margin: 0px;
    border-width: 0px;
	display: block;
	resize: none;
}
.dxeMemoEditArea_MetropolisBlue
{
    background-color: white;
    outline: none;
}
textarea{overflow:auto}
        .auto-style1 {
            vertical-align: middle;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            background-image: url('mvwres://DevExpress.Web.ASPxThemes.v17.2,%20Version=17.2.4.0,%20Culture=neutral,%20PublicKeyToken=b88d1754d700e49a/DevExpress.Web.ASPxThemes.App_Themes.MetropolisBlue.Editors.dt_sprite.png');
        }
        .auto-style2 {
            vertical-align: middle;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            background-image: url('mvwres://DevExpress.Web.ASPxThemes.v17.2,%20Version=17.2.4.0,%20Culture=neutral,%20PublicKeyToken=b88d1754d700e49a/DevExpress.Web.ASPxThemes.App_Themes.MetropolisBlue.GridView.sprite.png');
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_REG_LISTA_CHEQUEO" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [QA_ACC_REG_CHECKLIST] SET
 [OBSERVACION_CHK] = ISNULL( @OBSERVACION_CHK,''),
 [ESTADO_APROBACION] = @ESTADO_APROBACION 
WHERE [ID_REG_CHK] = @ID_REG_CHK">
                                                <SelectParameters>
                                                    <asp:QueryStringParameter Name="ID_ACC_REG" QueryStringField="id" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="OBSERVACION_CHK" />
                                                    <asp:Parameter Name="ESTADO_APROBACION" />
                                                    <asp:Parameter Name="ID_REG_CHK" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>




                                            <dx:ASPxGridView ID="grillaLista" runat="server" AutoGenerateColumns="False" ClientInstanceName="detailGridView" DataSourceID="SqlDataSource2" EnableTheming="True" KeyFieldName="ID_REG_CHK" OnCustomCallback="grillaLista_CustomCallback" Theme="MetropolisBlue" Width="100%">
                                                <SettingsAdaptivity>
                                                    <AdaptiveDetailLayoutProperties>
                                                        <Items>
                                                            <dx:GridViewColumnLayoutItem ColumnName="ITEM">
                                                            </dx:GridViewColumnLayoutItem>
                                                            <dx:GridViewColumnLayoutItem ColumnName="NOMBRE_CHK">
                                                            </dx:GridViewColumnLayoutItem>
                                                            <dx:GridViewColumnLayoutItem ColumnName="CRITERIO_CONTROL">
                                                            </dx:GridViewColumnLayoutItem>
                                                            <dx:GridViewColumnLayoutItem ColumnName="ESPECIFICACION_CHK">
                                                            </dx:GridViewColumnLayoutItem>
                                                        </Items>
                                                    </AdaptiveDetailLayoutProperties>
                                                </SettingsAdaptivity>
                                                <SettingsPager Mode="ShowAllRecords">
                                                </SettingsPager>
                                                <SettingsEditing Mode="Batch">
                                                    <BatchEditSettings AllowRegularDataItemTemplate="True" />
                                                </SettingsEditing>
                                                <Settings ShowFooter="True" ShowGroupButtons="False" />
                                                <SettingsBehavior AllowFixedGroups="True" AutoExpandAllGroups="True" />
                                                <SettingsDataSecurity AllowDelete="False" AllowInsert="False" />
                                                <SettingsPopup>
                                                    <EditForm HorizontalAlign="Center" Modal="True" Width="100%">
                                                    </EditForm>
                                                    <CustomizationWindow MinHeight="100%" MinWidth="100%" Width="100%" />
                                                </SettingsPopup>
                                                <Columns>
                                                    <dx:GridViewCommandColumn ButtonRenderMode="Button" ButtonType="Button" ShowInCustomizationForm="True" VisibleIndex="0" Width="2%">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewBandColumn Caption="EDICIÓN" ShowInCustomizationForm="True" VisibleIndex="7">
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn FieldName="TIPO_DATO_ENT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="DATO ENTRADA" FieldName="DATO_ENT" ShowInCustomizationForm="True" VisibleIndex="0" Width="2%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataComboBoxColumn Caption="ESTADO" FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
                                                                <PropertiesComboBox DropDownStyle="DropDown" TextField="ESTADO_APROBACION" ValueField="ESTADO_APROBACION">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="APROBADO" Value="0" />
                                                                        <dx:ListEditItem Text="RECHAZADO" Value="1" />
                                                                        <dx:ListEditItem Text="OBSERVACIÓN" Value="2" />
                                                                    </Items>
                                                                </PropertiesComboBox>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataComboBoxColumn>
                                                            <dx:GridViewDataMemoColumn Caption="OBSERVACIÓN" FieldName="OBSERVACION_CHK" ShowInCustomizationForm="True" VisibleIndex="2" Width="28%">
                                                                <PropertiesMemoEdit Height="200px" MaxLength="500">
                                                                </PropertiesMemoEdit>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataMemoColumn>
                                                            <dx:GridViewDataTextColumn Caption="documento" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3" Width="10%">
                                                                <EditItemTemplate>
                                                                    <dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" ClientInstanceName="uc" FileUploadMode="OnPageLoad" OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete" UploadMode="Advanced" Width="280px">
                                                                        <ClientSideEvents FileUploadComplete="OnFileUploadComplete" TextChanged="OnTextChanged" />
                                                                    </dx:ASPxUploadControl>
                                                                </EditItemTemplate>
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                    <dx:GridViewBandColumn Caption="INFORMACIÓN" ShowInCustomizationForm="True" VisibleIndex="1">
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="ID" FieldName="ID_REG_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0" Width="5%">
                                                                <EditFormSettings Visible="False" />
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="ITEM" ShowInCustomizationForm="True" VisibleIndex="1" Width="3%">
                                                                <EditCellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </EditCellStyle>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="ESPECIFICACIÓN" FieldName="NOMBRE_CHK" ShowInCustomizationForm="True" VisibleIndex="2" Width="35%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="CRITERIO DE CONTROL" FieldName="CRITERIO_CONTROL" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4" Width="15%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="ESPECIFICACIÓN" FieldName="ESPECIFICACION_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="5" Width="15%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                </Columns>
                                                <Styles>
                                                    <GroupRow Font-Bold="True">
                                                    </GroupRow>
                                                    <GroupPanel BackColor="#0066FF" Font-Bold="True" ForeColor="White">
                                                    </GroupPanel>
                                                    <BatchEditCell BackColor="#FFCC00">
                                                    </BatchEditCell>
                                                </Styles>
                                            </dx:ASPxGridView>




        </div>
    </form>
</body>
</html>
