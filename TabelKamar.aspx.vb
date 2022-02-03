
Partial Class TabelKamar
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim kamaradapter As New DataSetTabelKamarTableAdapters.kamarTableAdapter
        kamaradapter.Insert(nama_kamar.Text, jenis_kamar.Text, kelas_kamar.Text, tarif.Text)
        kamar.Visible = True
        kamar.DataSource = kamaradapter.GetDataKamar()
        Response.Redirect("TabelKamar.aspx")

    End Sub

End Class
