Public Class Inicio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim vUser As DAL.Seguridad.UsuarioSistema = Session.Contents("SSN_USUARIO")
        Dim dsEmpresas As DataTable = vUser.Empresas

        gridEmpresas.DataSource = dsEmpresas
        gridEmpresas.DataBind()


    End Sub

End Class