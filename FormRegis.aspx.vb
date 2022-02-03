Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class FormRegis
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim sda As New SqlDataAdapter

        con.ConnectionString = "Data Source=laptop-l9aqsnvb\sqlexpress;Initial Catalog=rumahsakit;Integrated Security=True"
        con.Open()
        cmd = New SqlCommand("select * from multiuser where nama= '" & nama.Text & "' and katasandi = '" & katasandi.Text & "' and jenis_pengguna= '" & DropDownList1.SelectedItem.ToString() & "' ", con)
        sda = New SqlDataAdapter(cmd)

        Dim dt As New DataTable()
        sda.Fill(dt)

        If (dt.Rows.Count > 0) Then
            If (DropDownList1.SelectedIndex = 0) Then
                Response.Redirect("TabelKamar.aspx")
            ElseIf (DropDownList1.SelectedIndex = 1) Then
                Response.Redirect("userberanda.aspx")
            End If
        Else
            MsgBox("Error nih")
        End If
        con.Close()
    End Sub
End Class