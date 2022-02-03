
Partial Class TabelDokter
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dokteradapter As New DataSetDokterTableAdapters.dokterTableAdapter
        dokteradapter.Insert(nama_dokter.Text, jenis_kelamin.Text, spesialis.Text, kontak.Text, status.Text)
        dokter.Visible = True
        dokter.DataSource = dokteradapter.GetDataDokter()
        Response.Redirect("TabelRegis.aspx")

    End Sub
End Class
