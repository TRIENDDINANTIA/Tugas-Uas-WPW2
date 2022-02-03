
Partial Class TabelRawatjalan
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim rawatjalanadapter As New DataSetRawatjalanTableAdapters.rawatjalanTableAdapter
        rawatjalanadapter.Insert(nama_pasien.Text, jenis_kelamin.Text, penyakit.Text, kontak.Text)
        rawatjalan.Visible = True
        rawatjalan.DataSource = rawatjalanadapter.GetDataRawatjalan()
        Response.Redirect("TabelRawatjalan.aspx")

    End Sub

End Class
