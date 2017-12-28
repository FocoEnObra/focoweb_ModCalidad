Imports System.Data.SqlClient
Imports DevExpress.Export
Imports DevExpress.Web

Public Class Formulario_web11
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
    Protected Sub Grid_ToolbarItemClick(ByVal source As Object, ByVal e As ASPxGridToolbarItemClickEventArgs)
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
            cmd.Parameters.Add(New SqlParameter("@FECHA", SqlDbType.Date)).Value = Session.Contents("TXT_FECHA")   '1 ' Session.Contents("usuario")


            adap = New SqlDataAdapter(cmd)
            adap.Fill(ds, "tbllogin")
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub dll_uco_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim ddlCombo As ASPxComboBox = TryCast(sender, ASPxComboBox)
        Session.Add("ID_UCO", ddlCombo.SelectedItem.Value)



    End Sub

    Protected Sub txtFecha_DateChanged(sender As Object, e As EventArgs)
        Dim TXT_FECHA As ASPxDateEdit = TryCast(sender, ASPxDateEdit)
        Session.Add("TXT_FECHA", TXT_FECHA.Text)


    End Sub
End Class