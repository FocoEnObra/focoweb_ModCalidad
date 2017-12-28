Imports System.Data.SqlClient
Imports System.IO
Imports DevExpress.Export
Imports DevExpress.Web

Public Class Formulario_web13
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub gridRecinto_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("ID_ACC_PLT") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()

    End Sub

    Protected Sub ASPxGridView4_BeforePerformDataSelect(sender As Object, e As EventArgs)
        ' Session("ID_ACC_PLT") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
        Session("ID_UCO") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()

    End Sub

    Protected Sub pageControl_ActiveTabChanged(source As Object, e As TabControlEventArgs)

    End Sub
    Protected Sub gridRecinto_ToolbarItemClick(ByVal source As Object, ByVal e As ASPxGridToolbarItemClickEventArgs)
        Dim grid As ASPxGridView = CType(source, ASPxGridView)
        Select Case e.Item.Name
            Case "CustomExportToXLS"
                grid.ExportXlsToResponse(New DevExpress.XtraPrinting.XlsExportOptionsEx With {.ExportType = ExportType.WYSIWYG})
            Case "CustomExportToXLSX"
                grid.ExportXlsxToResponse(New DevExpress.XtraPrinting.XlsxExportOptionsEx With {.ExportType = ExportType.WYSIWYG})
            Case Else
        End Select
    End Sub
    Protected Sub ASPxGridView1_CustomUnboundColumnData(sender As Object, e As ASPxGridViewColumnDataEventArgs) Handles gridActividades.CustomUnboundColumnData
        If e.Column.FieldName = "UCO_TOT" Then
            Dim price As Decimal = CDec(e.GetListSourceFieldValue("UCO_TOT"))
            Dim quantity As Integer = Convert.ToInt32(e.GetListSourceFieldValue("UCO_TOT"))
            e.Value = price * quantity
        End If



    End Sub
    Public Function Conexion() As SqlConnection
        Dim ConeCt As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("cnxCalidad").ConnectionString)
        Return ConeCt
    End Function

    Protected Sub ASPxButton1_Click(sender As Object, e As EventArgs)

        Dim ds As DataSet = New DataSet
        'Dim grillas As ASPxGridView = TryCast(gridActividades.FindControl("gridRecinto"), ASPxGridView)
        'Dim ddlCombo As ASPxComboBox = TryCast(grillas.FindControl("dll_uco"), ASPxComboBox)
        Try
            Conexion.Open()
            Dim cmd As New SqlCommand("dbo.SP_QA_ACC_REG_INSERTAR_REGISTRO", Conexion())
            Dim adap As SqlDataAdapter
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New SqlParameter("@ID_ACC_PLT", SqlDbType.Char)).Value = Session.Contents("ID_ACC_PLT")
            cmd.Parameters.Add(New SqlParameter("@ID_UCO", SqlDbType.Char)).Value = Session.Contents("ID_UCO")
            cmd.Parameters.Add(New SqlParameter("@ID_USU", SqlDbType.Char)).Value = 1 ' Session.Contents("usuario")

            adap = New SqlDataAdapter(cmd)
            adap.Fill(ds, "tbllogin")
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub dll_uco_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim ddlCombo As ASPxComboBox = TryCast(sender, ASPxComboBox)
        Session.Add("ID_UCO", ddlCombo.SelectedItem.Value)



    End Sub
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        If Session("baseURL") Is Nothing Then
            Session("baseURL") = "PopCheck.aspx"
        End If
    End Sub
    Protected Sub gridActividades_BeforePerformDataSelect(sender As Object, e As EventArgs) Handles gridActividades.BeforePerformDataSelect
        Session("ID_ACC_PLT") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()


    End Sub

    Protected Sub grilla_ActividadControl_BeforePerformDataSelect(sender As Object, e As EventArgs)

        Session("ID_ACC_REG") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()

        Session("ID_UCO") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()




    End Sub

    Protected Sub grillaLista_CustomCallback(sender As Object, e As ASPxGridViewCustomCallbackEventArgs) Handles grillaLista.CustomCallback
        Session("ID_ACC_REG_1") = e.Parameters
        Session("ID_UCO") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
        grillaLista.DataBind()



    End Sub

    Protected Sub grillaLista_RowUpdated(sender As Object, e As Data.ASPxDataUpdatedEventArgs) Handles grillaLista.RowUpdated

        Dim registrosAfectados As Integer = e.AffectedRecords
        Dim grilla As ASPxGridView = TryCast(sender, ASPxGridView)

        Dim viejos As Integer = e.OldValues.Count
        Dim nuevos As Integer = e.NewValues.Count







        Dim ds As DataSet = New DataSet
            Try
                Conexion.Open()
                Dim cmd As New SqlCommand("dbo.SP_QA_ACC_REG_ACTUALIZA_CHECKLIST", Conexion())
                Dim adap As SqlDataAdapter
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add(New SqlParameter("@ID_ACC_REG", SqlDbType.Char)).Value = Session("ID_ACC_REG_1")
                adap = New SqlDataAdapter(cmd)
                adap.Fill(ds, "tbllogin")
            Catch ex As Exception

            End Try







    End Sub



    Protected Sub ASPxUploadControl1_FileUploadComplete(ByVal sender As Object, ByVal e As FileUploadCompleteEventArgs)
        Dim name = e.UploadedFile.FileName
        e.CallbackData = name
        ' If File.ContainsKey(HiddenField("visibleIndex")) Then Files(HiddenField("visibleIndex")) = e.UploadedFile.FileBytes Else Files.Add(HiddenField("visibleIndex"), e.UploadedFile.FileBytes)
    End Sub

    Protected Sub grilla_ActividadControl_DetailRowExpandedChanged(sender As Object, e As ASPxGridViewDetailRowEventArgs)

        'Session("ID_ACC_REG_q") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()

        'Session("ID_UCO") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
        'grillaLista.DataBind()

    End Sub

    Protected Sub grillaLista_BatchUpdate(sender As Object, e As Data.ASPxDataBatchUpdateEventArgs) Handles grillaLista.BatchUpdate
        '  Dim a As Integer = e.UpdateValues. 


    End Sub

    Protected Sub grilla_ActividadControl_SelectionChanged(sender As Object, e As EventArgs)

        ' grillaLista.DataBind()
    End Sub

    Protected Sub grilla_ActividadControl_FocusedRowChanged(sender As Object, e As EventArgs)
        grillaLista.DataBind()
    End Sub
End Class