
Partial Class TabelRawatInap
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim rawatinapadapter As New DataSetRawatinapTableAdapters.rawatinap__TableAdapter
        rawatinapadapter.Insert(nama_pasien.Text, jenis_kelamin.Text, penyakit.Text, kontak.Text)
        rawatinap.Visible = True
        rawatinap.DataSource = rawatinapadapter.GetDataRawatinap()
        Response.Redirect("TabelRawatinap.aspx")

    End Sub
End Class
