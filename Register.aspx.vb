Imports System.Data.SqlClient
Imports System.Configuration
Partial Class Register
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim conn As Object
        conn = ConfigurationManager.ConnectionStrings("rumahsakitConnectionString5").ConnectionString
        con = New SqlConnection(conn)
        con.Open()

        cmd = New SqlCommand(" INSERT INTO multiuser (nama, katasandi, jenis_pengguna) VALUES ('" + nama.Text + "', '" + katasandi.Text + "', 'pasien')", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("FormRegis.aspx")
        MsgBox("Registrasi Berhasil")
    End Sub
End Class
