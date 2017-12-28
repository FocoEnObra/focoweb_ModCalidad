Imports System.Collections.Generic
Imports DevExpress.XtraReports.Web.Extensions
Imports DevExpress.XtraReports.UI

Public Class ReportStorageWebExtension1
    Inherits DevExpress.XtraReports.Web.Extensions.ReportStorageWebExtension

    Public Overrides Function CanSetData(ByVal url As String) As Boolean
        ' Determines whether or not it is possible to store a report by a given URL. 
        ' For instance, make the CanSetData method return false for reports that should be read-only in your storage. 
        ' This method is called only for valid URLs (i.e., if the IsValidUrl method returned true) before the SetData method is called.

        Return MyBase.CanSetData(url)
    End Function

    Public Overrides Function IsValidUrl(ByVal url As String) As Boolean
        ' Determines whether or not the URL passed to the current Report Storage is valid. 
        ' For instance, implement your own logic to prohibit URLs that contain white spaces or some other special characters. 
        ' This method is called before the CanSetData and GetData methods.

        Return MyBase.IsValidUrl(url)
    End Function

    Public Overrides Function GetData(ByVal url As String) As Byte()
        ' Returns report layout data stored in a Report Storage using the specified URL. 
        ' This method is called only for valid URLs after the IsValidUrl method is called.

        Return MyBase.GetData(url)
    End Function

    Public Overrides Function GetUrls() As Dictionary(Of String, String)
        ' Returns a dictionary of the existing report URLs and display names. 
        ' This method is called when running the Report Designer, 
        ' before the Open Report and Save Report dialogs are shown and after a new report is saved to a storage.

        Return MyBase.GetUrls()
    End Function

    Public Overrides Sub SetData(ByVal report As XtraReport, ByVal url As String)
        ' Stores the specified report to a Report Storage using the specified URL. 
        ' This method is called only after the IsValidUrl and CanSetData methods are called.

        MyBase.SetData(report, url)
    End Sub

    Public Overrides Function SetNewData(ByVal report As XtraReport, ByVal defaultUrl As String) As String
        ' Stores the specified report using a new URL. 
        ' The IsValidUrl and CanSetData methods are never called before this method. 
        ' You can validate and correct the specified URL directly in the SetNewData method implementation 
        ' and return the resulting URL used to save a report in your storage.

        Return MyBase.SetNewData(report, defaultUrl)
    End Function

End Class