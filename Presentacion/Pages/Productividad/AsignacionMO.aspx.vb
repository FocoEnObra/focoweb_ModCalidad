Imports Presentacion.Maestro
Imports System.Data.SqlClient
Imports DevExpress.Web

Imports System.Net

Public Class AsignacionMO
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            ' grdDetalle.DataBind()
            gridActividades.DataBind()
            'popUpTable.DataBind()
            'grdDetalle4.DataBind()
            txtFecha.MaxDate = Date.Today
            ' picFecha.Text = Date.Today
            'ddlAreas.DataSource = traeAreas()
            'ddlAreas.DataBind()



        End If
    End Sub

    Function GetTable() As DataTable
        ' Create new DataTable instance.

        Dim table As New DataTable
        Dim i As Double

        ' Create four typed columns in the DataTable.
        'table.Columns.Add("id", GetType(Integer))
        table.Columns.Add("chkbox", GetType(Integer))
        table.Columns.Add("nombre", GetType(String))
        table.Columns.Add("rut", GetType(String))
        table.Columns.Add("estado", GetType(String))
        table.Columns.Add("especialidad", GetType(String))
        table.Columns.Add("cargo", GetType(String))
        table.Columns.Add("supervisor", GetType(String))
        For i = 1 To 100
            ' Add five rows with those columns filled in the DataTable.
            table.Rows.Add(0, "Juan Pérez" & Str(i), "15.311.232-1", "No Asignado", "Gasfiter", "Maestro", "José González")
        Next i
        Return table

    End Function

    Function CargaActividades() As DataTable

        Dim dsActividades As DataSet = New DataSet()
        Dim tblActividades As New DataTable
        Dim j As Double


        tblActividades.Columns.Add("ID_PAR", GetType(Integer))

        tblActividades.Columns.Add("CODIGO_PAR", GetType(String))
        tblActividades.Columns.Add("NOMBRE_PAR", GetType(String))
        tblActividades.Columns.Add("UM", GetType(String))
        tblActividades.Columns.Add("CANT_AVA", GetType(String))

        tblActividades.Columns.Add("CKB_1", GetType(Integer))
        tblActividades.Columns.Add("CKB_2", GetType(Integer))
        tblActividades.Columns.Add("CKB_3", GetType(Integer))
        tblActividades.Columns.Add("CKB_4", GetType(Integer))
        tblActividades.Columns.Add("CKB_5", GetType(Integer))
        tblActividades.Columns.Add("CKB_6", GetType(Integer))
        tblActividades.Columns.Add("CKB_7", GetType(Integer))

        tblActividades.Columns.Add("CKB_8", GetType(Integer))
        tblActividades.Columns.Add("CKB_9", GetType(Integer))
        tblActividades.Columns.Add("CKB_10", GetType(Integer))
        tblActividades.Columns.Add("CKB_11", GetType(Integer))
        tblActividades.Columns.Add("CKB_12", GetType(Integer))
        tblActividades.Columns.Add("CKB_13", GetType(Integer))
        tblActividades.Columns.Add("CKB_14", GetType(Integer))
        tblActividades.Columns.Add("TotalAvance", GetType(Integer))
        dsActividades.Tables.Add(tblActividades)

        'For j = 1 To 100
        '    ' Add five rows with those columns filled in the DataTable.
        '    table2.Rows.Add(j, "001", "Texto de Prueba", "m3", "99999", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9999)
        'Next j
        'Return table2




    End Function


    Function GetTable3() As DataTable


        Dim table3 As New DataTable
        Dim k As Double

        ' Create four typed columns in the DataTable.
        'table.Columns.Add("id", GetType(Integer))
        table3.Columns.Add("chk2", GetType(Integer))
        table3.Columns.Add("cod2", GetType(String))
        table3.Columns.Add("partida2", GetType(String))
        table3.Columns.Add("um2", GetType(String))
        table3.Columns.Add("qavance2", GetType(String))


        For k = 1 To 100
            ' Add five rows with those columns filled in the DataTable.
            table3.Rows.Add(0, "001", "Texto de Prueba2", "m3", "99999")
        Next k
        Return table3



    End Function

    Function GetTable4() As DataTable
        ' Create new DataTable instance.

        Dim table4 As New DataTable
        Dim v As Double

        ' Create four typed columns in the DataTable.
        'table.Columns.Add("id", GetType(Integer))
        table4.Columns.Add("chkbox4", GetType(Integer))
        table4.Columns.Add("nombre4", GetType(String))
        table4.Columns.Add("rut4", GetType(String))
        table4.Columns.Add("estado4", GetType(String))
        table4.Columns.Add("especialidad4", GetType(String))
        table4.Columns.Add("cargo4", GetType(String))
        table4.Columns.Add("supervisor4", GetType(String))
        For v = 1 To 100
            ' Add five rows with those columns filled in the DataTable.
            table4.Rows.Add(0, "Juan Pérez" & Str(v), "15.311.232-1", "No Asignado", "Gasfiter", "Maestro", "José González")
        Next v
        Return table4

    End Function

    'Private Sub grdAvance_DataBinding(sender As Object, e As System.EventArgs) Handles grdDetalle.DataBinding
    '    ' grdDetalle.DataSource = GetTable()
    '    '    Aspxgridview1.DataSource = GetTable2()
    '    popUpTable.DataSource = GetTable3()
    '    grdDetalle4.DataSource = GetTable4()
    'End Sub

    Protected Sub picFecha_DateChanged(sender As Object, e As EventArgs) Handles txtFecha.DateChanged
        Dim dsDiasElejidos As DataSet = New DataSet
        Dim columnaSemana As Integer = 5
        Dim columnaDias As Integer = 6
        Dim numDias As Integer = 0
        dsDiasElejidos = traerDias()
        For i As Integer = -13 To 0
            gridActividades.Columns(columnaSemana).Caption = txtFecha.Date.AddDays(i).ToString("ddd")
            gridActividades.AllColumns(columnaDias).Caption = txtFecha.Date.AddDays(i).ToString("dd")
            gridActividades.Columns(columnaSemana).HeaderStyle.BackColor = Drawing.Color.DarkGreen
            gridActividades.AllColumns(columnaDias).HeaderStyle.BackColor = Drawing.Color.DarkGreen
            If (dsDiasElejidos.Tables(0).Rows(numDias).Item("ES_INHABIL") = "1") Or (dsDiasElejidos.Tables(0).Rows(numDias).Item("ES_FERIADO") = "1") Then
                If dsDiasElejidos.Tables(0).Rows(numDias).Item("ES_INHABIL") = "1" Then
                    gridActividades.Columns(columnaSemana).HeaderStyle.BackColor = Drawing.Color.DarkGoldenrod
                    gridActividades.AllColumns(columnaDias).HeaderStyle.BackColor = Drawing.Color.DarkGoldenrod
                End If
                If dsDiasElejidos.Tables(0).Rows(numDias).Item("ES_FERIADO") = "1" Then
                    gridActividades.Columns(columnaSemana).HeaderStyle.BackColor = Drawing.Color.DarkOliveGreen
                    gridActividades.AllColumns(columnaDias).HeaderStyle.BackColor = Drawing.Color.DarkOliveGreen
                End If
                If (dsDiasElejidos.Tables(0).Rows(numDias).Item("ES_FERIADO") = "1") And (dsDiasElejidos.Tables(0).Rows(numDias).Item("ES_INHABIL") = "1") Then
                    gridActividades.Columns(columnaSemana).HeaderStyle.BackColor = Drawing.Color.DarkKhaki
                    gridActividades.AllColumns(columnaDias).HeaderStyle.BackColor = Drawing.Color.DarkKhaki
                End If

            End If
            numDias = numDias + 1
            columnaDias = columnaDias + 2
            columnaSemana = columnaSemana + 1
        Next

    End Sub



    Function traerDias() As DataSet
        Dim dsDias As DataSet = New DataSet
        Try
            dsDias = DAL.Empresa.Dias.ListarDias(1, txtFecha.Text, Session("SSN_USUARIO"))
        Catch sqlEx As SqlException
            'MostrarError(sqlEx.Message, , ex)
            Exit Function
        Catch ex As Exception
            'MostrarError(ex.Message, , ex)
            Exit Function
        End Try
        Return dsDias
    End Function


    Function traeAreas() As DataSet
        Dim dsAreas As DataSet = New DataSet
        Try
            dsAreas = DAL.Empresa.Areas.ListarAreas(1, Session("SSN_USUARIO"))
        Catch sqlEx As SqlException
            'MostrarError(sqlEx.Message, , ex)
            Exit Function
        Catch ex As Exception
            'MostrarError(ex.Message, , ex)
            Exit Function
        End Try
        Return dsAreas
    End Function



    Function traerTrabajadores() As DataSet
        Dim dsTrabajadores As DataSet = New DataSet
        Try
            dsTrabajadores = DAL.Empresa.Trabajadores.ListarTrabajadores(1, txtFecha.Text, Session("SSN_USUARIO"))
        Catch sqlEx As SqlException
            'MostrarError(sqlEx.Message, , ex)
            Exit Function
        Catch ex As Exception
            'MostrarError(ex.Message, , ex)
            Exit Function
        End Try
        Return dsTrabajadores

    End Function


    Private Sub btnAgregar_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click

        popupActividades.ShowOnPageLoad = True
        '  popupActividades.AutoUpdatePosition = True
        popupActividades.ModalBackgroundStyle.Opacity = 80

        'popupActividades.PopupHorizontalAlign = PopupHorizontalAlign.WindowCenter

        'popupActividades.PopupVerticalAlign = PopupVerticalAlign.Below






    End Sub

    Protected Sub btnAgregarNuevaActividad_Click(sender As Object, e As EventArgs) Handles btnAgregarNuevaActividad.Click
        Dim tblActividades As New DataTable
        Dim fieldValues As List(Of Object) = ASPxGridView1.GetSelectedFieldValues(New String() {"CODIGO_PAR", "NOMBRE_PAR", "CANT_AVA", "UM"})
        For Each item As Object() In fieldValues

            '    tblActividades.Rows.Add(0, item(0).ToString, item(1).ToString, item(2).ToString, item(3).ToString)

        Next

        gridActividades.DataSource = tblActividades
        gridActividades.DataBind()



    End Sub

    'Protected Sub ddlAreas_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlAreas.SelectedIndexChanged
    '    'gridTrabajadores.DataSource = traerTrabajadores()
    '    'gridTrabajadores.DataBind()

    'End Sub

    'Protected Sub ASPxButton1_Click(sender As Object, e As EventArgs) Handles ASPxButton1.Click
    '    Dim fieldValues As List(Of Object) = popUpTable.GetSelectedFieldValues(New String() {"CODIGO_PAR", "NOMBRE_PAR", "CANT_AVA", "UM"})
    '    For Each item As Object() In fieldValues
    '        'txtPrueba.Text += item(1).ToString() + vbLf
    '        ' txtPrueba.Text += item(1).ToString() + vbLf


    '    Next



    'End Sub
End Class