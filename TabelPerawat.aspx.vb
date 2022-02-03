
Partial Class TabelPerawat
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim perawatadapter As New DataSetPerawatTableAdapters.perawatTableAdapter
        perawatadapter.Insert(nama_perawat.Text, jenis_kelamin.Text, kontak.Text)
        perawat.Visible = True
        perawat.DataSource = perawatadapter.GetDataPerawat()
        Response.Redirect("TabelPerawat.aspx")

    End Sub
End Class
