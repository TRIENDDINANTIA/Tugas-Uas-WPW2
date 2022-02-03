<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TabelPerawat.aspx.vb" Inherits="TabelPerawat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form id="form1" runat="server">
      
            <!-- Datatables -->
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Data Perawat</h6>
                </div>
                   <div class="form-group">
                      <asp:TextBox ID="Id_perawat" runat="server" class="form-control"  aria-describedby="emailHelpr" placeholder="No"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="nama_perawat" runat="server" class="form-control" placeholder="Nama Perawat"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="jenis_kelamin" runat="server" class="form-control"  aria-describedby="emailHelp" placeholder="Jenis Kelamin"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="kontak" runat="server" class="form-control" placeholder="Kontak"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:Button ID="Button1" runat="server" Text="Tambah" class="btn btn-primary btn-block"/>
                    </div>
                  
                <div class="table-responsive p-3">
                    <asp:GridView ID="perawat" runat="server" class="table align-items-center table-flush" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id_perawat" DataSourceID="SqlDataSource1" >
                        <Columns>
                            <asp:BoundField DataField="Id_perawat" HeaderText="Not" ReadOnly="True" SortExpression="Id_perawat" />
                            <asp:BoundField DataField="nama_perawat" HeaderText="Nama Perawat" SortExpression="nama_perawat" />
                            <asp:BoundField DataField="jenis_kelamin" HeaderText="Jenis Kelamin" SortExpression="jenis_kelamin" />
                            <asp:BoundField DataField="kontak" HeaderText="Kontak" SortExpression="kontak" />
                            <asp:CommandField HeaderText="Aksi" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rumahsakitConnectionString %>" SelectCommand="SELECT * FROM [perawat]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [perawat] WHERE [Id_perawat] = @original_Id_perawat AND (([nama_perawat] = @original_nama_perawat) OR ([nama_perawat] IS NULL AND @original_nama_perawat IS NULL)) AND (([jenis_kelamin] = @original_jenis_kelamin) OR ([jenis_kelamin] IS NULL AND @original_jenis_kelamin IS NULL)) AND (([kontak] = @original_kontak) OR ([kontak] IS NULL AND @original_kontak IS NULL))" InsertCommand="INSERT INTO [perawat] ([Id_perawat], [nama_perawat], [jenis_kelamin], [kontak]) VALUES (@Id_perawat, @nama_perawat, @jenis_kelamin, @kontak)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [perawat] SET [nama_perawat] = @nama_perawat, [jenis_kelamin] = @jenis_kelamin, [kontak] = @kontak WHERE [Id_perawat] = @original_Id_perawat AND (([nama_perawat] = @original_nama_perawat) OR ([nama_perawat] IS NULL AND @original_nama_perawat IS NULL)) AND (([jenis_kelamin] = @original_jenis_kelamin) OR ([jenis_kelamin] IS NULL AND @original_jenis_kelamin IS NULL)) AND (([kontak] = @original_kontak) OR ([kontak] IS NULL AND @original_kontak IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id_perawat" Type="Int32" />
                            <asp:Parameter Name="original_nama_perawat" Type="String" />
                            <asp:Parameter Name="original_jenis_kelamin" Type="String" />
                            <asp:Parameter Name="original_kontak" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id_perawat" Type="Int32" />
                            <asp:Parameter Name="nama_perawat" Type="String" />
                            <asp:Parameter Name="jenis_kelamin" Type="String" />
                            <asp:Parameter Name="kontak" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nama_perawat" Type="String" />
                            <asp:Parameter Name="jenis_kelamin" Type="String" />
                            <asp:Parameter Name="kontak" Type="String" />
                            <asp:Parameter Name="original_Id_perawat" Type="Int32" />
                            <asp:Parameter Name="original_nama_perawat" Type="String" />
                            <asp:Parameter Name="original_jenis_kelamin" Type="String" />
                            <asp:Parameter Name="original_kontak" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                       
                </div>
              </div>
            </div>
    </form>
   
          

</asp:Content>




