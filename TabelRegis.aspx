 <%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TabelRegis.aspx.vb" Inherits="TableRegis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
      
            <!-- Datatables -->
            <div class="col-lg-9">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">DataTables</h6>
                </div>
                  <div class="form-group">
                      <asp:TextBox ID="nama_dokter" runat="server" class="form-control"  aria-describedby="emailHelp" placeholder="Nama Dokter"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="jenis_kelamin" runat="server" class="form-control" placeholder="Jenis Kelamin"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="spesialis" runat="server" class="form-control"  aria-describedby="emailHelp" placeholder="Spesialis"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="kontak" runat="server" class="form-control" placeholder="Kontak"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="status" runat="server" class="form-control" placeholder="status"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:Button ID="Button1" runat="server" Text="Tambah" class="btn btn-primary btn-block"/>
                    </div>

                <div class="table-responsive p-3">
                    <asp:GridView ID="dokter" runat="server" class="table align-items-center table-flush" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id_dokter" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Id_dokter" HeaderText="Id Dokter" ReadOnly="True" SortExpression="Id_dokter" />
                            <asp:BoundField DataField="nama_dokter" HeaderText="Nama Dokter" SortExpression="nama_dokter" />
                            <asp:BoundField DataField="jenis_kelamin" HeaderText="Jenis Kelamin" SortExpression="jenis_kelamin" />
                            <asp:BoundField DataField="spesialis" HeaderText="Spesialis" SortExpression="spesialis" />
                            <asp:BoundField DataField="kontak" HeaderText="Kontak" SortExpression="kontak" />
                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                            <asp:CommandField HeaderText="Aksi" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:rumahsakitConnectionString %>" DeleteCommand="DELETE FROM [dokter] WHERE [Id_dokter] = @original_Id_dokter AND (([nama_dokter] = @original_nama_dokter) OR ([nama_dokter] IS NULL AND @original_nama_dokter IS NULL)) AND (([jenis_kelamin] = @original_jenis_kelamin) OR ([jenis_kelamin] IS NULL AND @original_jenis_kelamin IS NULL)) AND (([spesialis] = @original_spesialis) OR ([spesialis] IS NULL AND @original_spesialis IS NULL)) AND (([kontak] = @original_kontak) OR ([kontak] IS NULL AND @original_kontak IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [dokter] ([Id_dokter], [nama_dokter], [jenis_kelamin], [spesialis], [kontak], [status]) VALUES (@Id_dokter, @nama_dokter, @jenis_kelamin, @spesialis, @kontak, @status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [dokter]" UpdateCommand="UPDATE [dokter] SET [nama_dokter] = @nama_dokter, [jenis_kelamin] = @jenis_kelamin, [spesialis] = @spesialis, [kontak] = @kontak, [status] = @status WHERE [Id_dokter] = @original_Id_dokter AND (([nama_dokter] = @original_nama_dokter) OR ([nama_dokter] IS NULL AND @original_nama_dokter IS NULL)) AND (([jenis_kelamin] = @original_jenis_kelamin) OR ([jenis_kelamin] IS NULL AND @original_jenis_kelamin IS NULL)) AND (([spesialis] = @original_spesialis) OR ([spesialis] IS NULL AND @original_spesialis IS NULL)) AND (([kontak] = @original_kontak) OR ([kontak] IS NULL AND @original_kontak IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id_dokter" Type="Int32" />
                            <asp:Parameter Name="original_nama_dokter" Type="String" />
                            <asp:Parameter Name="original_jenis_kelamin" Type="String" />
                            <asp:Parameter Name="original_spesialis" Type="String" />
                            <asp:Parameter Name="original_kontak" Type="String" />
                            <asp:Parameter Name="original_status" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id_dokter" Type="Int32" />
                            <asp:Parameter Name="nama_dokter" Type="String" />
                            <asp:Parameter Name="jenis_kelamin" Type="String" />
                            <asp:Parameter Name="spesialis" Type="String" />
                            <asp:Parameter Name="kontak" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nama_dokter" Type="String" />
                            <asp:Parameter Name="jenis_kelamin" Type="String" />
                            <asp:Parameter Name="spesialis" Type="String" />
                            <asp:Parameter Name="kontak" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                            <asp:Parameter Name="original_Id_dokter" Type="Int32" />
                            <asp:Parameter Name="original_nama_dokter" Type="String" />
                            <asp:Parameter Name="original_jenis_kelamin" Type="String" />
                            <asp:Parameter Name="original_spesialis" Type="String" />
                            <asp:Parameter Name="original_kontak" Type="String" />
                            <asp:Parameter Name="original_status" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rumahsakitConnectionString %>" SelectCommand="SELECT * FROM [dokter]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [dokter] WHERE [Id_dokter] = @original_Id_dokter AND (([nama_dokter] = @original_nama_dokter) OR ([nama_dokter] IS NULL AND @original_nama_dokter IS NULL)) AND (([jenis_kelamin] = @original_jenis_kelamin) OR ([jenis_kelamin] IS NULL AND @original_jenis_kelamin IS NULL)) AND (([spesialis] = @original_spesialis) OR ([spesialis] IS NULL AND @original_spesialis IS NULL)) AND (([kontak] = @original_kontak) OR ([kontak] IS NULL AND @original_kontak IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [dokter] ([Id_dokter], [nama_dokter], [jenis_kelamin], [spesialis], [kontak], [status]) VALUES (@Id_dokter, @nama_dokter, @jenis_kelamin, @spesialis, @kontak, @status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [dokter] SET [nama_dokter] = @nama_dokter, [jenis_kelamin] = @jenis_kelamin, [spesialis] = @spesialis, [kontak] = @kontak, [status] = @status WHERE [Id_dokter] = @original_Id_dokter AND (([nama_dokter] = @original_nama_dokter) OR ([nama_dokter] IS NULL AND @original_nama_dokter IS NULL)) AND (([jenis_kelamin] = @original_jenis_kelamin) OR ([jenis_kelamin] IS NULL AND @original_jenis_kelamin IS NULL)) AND (([spesialis] = @original_spesialis) OR ([spesialis] IS NULL AND @original_spesialis IS NULL)) AND (([kontak] = @original_kontak) OR ([kontak] IS NULL AND @original_kontak IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id_dokter" Type="Int32" />
                            <asp:Parameter Name="original_nama_dokter" Type="String" />
                            <asp:Parameter Name="original_jenis_kelamin" Type="String" />
                            <asp:Parameter Name="original_spesialis" Type="String" />
                            <asp:Parameter Name="original_kontak" Type="String" />
                            <asp:Parameter Name="original_status" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id_dokter" Type="Int32" />
                            <asp:Parameter Name="nama_dokter" Type="String" />
                            <asp:Parameter Name="jenis_kelamin" Type="String" />
                            <asp:Parameter Name="spesialis" Type="String" />
                            <asp:Parameter Name="kontak" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nama_dokter" Type="String" />
                            <asp:Parameter Name="jenis_kelamin" Type="String" />
                            <asp:Parameter Name="spesialis" Type="String" />
                            <asp:Parameter Name="kontak" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                            <asp:Parameter Name="original_Id_dokter" Type="Int32" />
                            <asp:Parameter Name="original_nama_dokter" Type="String" />
                            <asp:Parameter Name="original_jenis_kelamin" Type="String" />
                            <asp:Parameter Name="original_spesialis" Type="String" />
                            <asp:Parameter Name="original_kontak" Type="String" />
                            <asp:Parameter Name="original_status" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
              </div>
            </div>
    </form>
   
          

</asp:Content>

