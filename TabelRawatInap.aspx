<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TabelRawatInap.aspx.vb" Inherits="TabelRawatInap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
      
            <!-- Datatables -->
            <div class="col-lg-10">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Data Pasien Rawat Inap</h6>
                </div>
                   <div class="form-group">
                      <asp:TextBox ID="Id_rawatinap" runat="server" class="form-control"  aria-describedby="emailHelpr" placeholder="No"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="nama_pasien" runat="server" class="form-control" placeholder="Nama Pasien"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="jenis_kelamin" runat="server" class="form-control"  aria-describedby="emailHelp" placeholder="Jenis Kelamin"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="penyakit" runat="server" class="form-control" placeholder="Penyakit"></asp:TextBox> 
                    </div>
                  <div class="form-group">
                      <asp:TextBox ID="kontak" runat="server" class="form-control" placeholder="Kontak"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:Button ID="Button1" runat="server" Text="Tambah" class="btn btn-primary btn-block"/>
                    </div>
                <div class="table-responsive p-3">
                    <asp:GridView  ID="rawatinap" runat="server" class="table align-items-center table-flush" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id_rawatinap" DataSourceID="SqlDataSource1"  >
                        <Columns>
                            <asp:BoundField DataField="Id_rawatinap" HeaderText="No" ReadOnly="True" SortExpression="Id_rawatinap" />
                            <asp:BoundField DataField="nama_pasien" HeaderText="Nama Pasien" SortExpression="nama_pasien" />
                            <asp:BoundField DataField="jenis_kelamin" HeaderText="Jenis Kelamin" SortExpression="jenis_kelamin" />
                            <asp:BoundField DataField="penyakit" HeaderText="Penyakit" SortExpression="penyakit" />
                            <asp:BoundField DataField="kontak" HeaderText="Kontak" SortExpression="kontak" />
                            <asp:CommandField HeaderText="Aksi" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        
                    </asp:GridView>
                       
                   
                       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rumahsakitConnectionString%>" SelectCommand="SELECT * FROM [rawatinap
]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [rawatinap
] WHERE [Id_rawatinap] = @original_Id_rawatinap AND (([nama_pasien] = @original_nama_pasien) OR ([nama_pasien] IS NULL AND @original_nama_pasien IS NULL)) AND (([jenis_kelamin] = @original_jenis_kelamin) OR ([jenis_kelamin] IS NULL AND @original_jenis_kelamin IS NULL)) AND (([penyakit] = @original_penyakit) OR ([penyakit] IS NULL AND @original_penyakit IS NULL)) AND (([kontak] = @original_kontak) OR ([kontak] IS NULL AND @original_kontak IS NULL))" InsertCommand="INSERT INTO [rawatinap
] ([Id_rawatinap], [nama_pasien], [jenis_kelamin], [penyakit], [kontak]) VALUES (@Id_rawatinap, @nama_pasien, @jenis_kelamin, @penyakit, @kontak)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [rawatinap
] SET [nama_pasien] = @nama_pasien, [jenis_kelamin] = @jenis_kelamin, [penyakit] = @penyakit, [kontak] = @kontak WHERE [Id_rawatinap] = @original_Id_rawatinap AND (([nama_pasien] = @original_nama_pasien) OR ([nama_pasien] IS NULL AND @original_nama_pasien IS NULL)) AND (([jenis_kelamin] = @original_jenis_kelamin) OR ([jenis_kelamin] IS NULL AND @original_jenis_kelamin IS NULL)) AND (([penyakit] = @original_penyakit) OR ([penyakit] IS NULL AND @original_penyakit IS NULL)) AND (([kontak] = @original_kontak) OR ([kontak] IS NULL AND @original_kontak IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id_rawatinap" Type="Int32" />
                            <asp:Parameter Name="original_nama_pasien" Type="String" />
                            <asp:Parameter Name="original_jenis_kelamin" Type="String" />
                            <asp:Parameter Name="original_penyakit" Type="String" />
                            <asp:Parameter Name="original_kontak" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id_rawatinap" Type="Int32" />
                            <asp:Parameter Name="nama_pasien" Type="String" />
                            <asp:Parameter Name="jenis_kelamin" Type="String" />
                            <asp:Parameter Name="penyakit" Type="String" />
                            <asp:Parameter Name="kontak" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nama_pasien" Type="String" />
                            <asp:Parameter Name="jenis_kelamin" Type="String" />
                            <asp:Parameter Name="penyakit" Type="String" />
                            <asp:Parameter Name="kontak" Type="String" />
                            <asp:Parameter Name="original_Id_rawatinap" Type="Int32" />
                            <asp:Parameter Name="original_nama_pasien" Type="String" />
                            <asp:Parameter Name="original_jenis_kelamin" Type="String" />
                            <asp:Parameter Name="original_penyakit" Type="String" />
                            <asp:Parameter Name="original_kontak" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                       
                   
                       
                </div>
              </div>
            </div>
    </form>

</asp:Content>

