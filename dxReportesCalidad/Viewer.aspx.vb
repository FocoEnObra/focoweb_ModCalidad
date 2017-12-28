Public Class Viewer
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ASPxWebDocumentViewer1.OpenReport(New DevExpress.XtraReports.UI.XtraReport)
    End Sub

End Class