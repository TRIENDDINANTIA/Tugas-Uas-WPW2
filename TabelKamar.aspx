<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TabelKamar.aspx.vb" Inherits="TabelKamar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
      
            <!-- Datatables -->
            <div class="col-lg-10">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Data Kamar</h6>
                </div>
                   <div class="form-group">
                      <asp:TextBox ID="Id_kamar" runat="server" class="form-control"  aria-describedby="emailHelpr" placeholder="No"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="nama_kamar" runat="server" class="form-control" placeholder="Nama Kamar"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="jenis_kamar" runat="server" class="form-control"  aria-describedby="emailHelp" placeholder="Jenis Kamar"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="kelas_kamar" runat="server" class="form-control" placeholder="Kelas Kamar"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="tarif" runat="server" class="form-control" placeholder="Tarif"></asp:TextBox> 
                    </div>
                   <div class="form-group">
                      <asp:Button ID="Button1" runat="server" Text="Tambah" class="btn btn-primary btn-block"/>
                    </div>
                  

                <div class="table-responsive p-3">
                    <asp:GridView ID="kamar" runat="server" class="table align-items-center table-flush" Width="37%" AutoGenerateColumns="False" DataKeyNames="Id_kamar" DataSourceID="SqlDataSource1" Height="191px"   >
                        <Columns>
                            
                            <asp:BoundField DataField="Id_kamar" HeaderText="No" ReadOnly="True" SortExpression="Id_kamar" />
                            <asp:BoundField DataField="nama_kamar" HeaderText="Nama Kamar" SortExpression="nama_kamar" />
                            <asp:BoundField DataField="jenis_kamar" HeaderText="Jenis Kamar" SortExpression="jenis_kamar" />
                            <asp:BoundField DataField="kelas_kamar" HeaderText="Kelas Kamar" SortExpression="kelas_kamar" />
                            <asp:BoundField DataField="tarif" HeaderText="Tarif" SortExpression="tarif" />
                            <asp:CommandField HeaderText="Aksi" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rumahsakitConnectionString %>" SelectCommand="SELECT * FROM [kamar]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [kamar] WHERE [Id_kamar] = @original_Id_kamar AND (([nama_kamar] = @original_nama_kamar) OR ([nama_kamar] IS NULL AND @original_nama_kamar IS NULL)) AND (([jenis_kamar] = @original_jenis_kamar) OR ([jenis_kamar] IS NULL AND @original_jenis_kamar IS NULL)) AND (([kelas_kamar] = @original_kelas_kamar) OR ([kelas_kamar] IS NULL AND @original_kelas_kamar IS NULL)) AND (([tarif] = @original_tarif) OR ([tarif] IS NULL AND @original_tarif IS NULL))" InsertCommand="INSERT INTO [kamar] ([Id_kamar], [nama_kamar], [jenis_kamar], [kelas_kamar], [tarif]) VALUES (@Id_kamar, @nama_kamar, @jenis_kamar, @kelas_kamar, @tarif)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [kamar] SET [nama_kamar] = @nama_kamar, [jenis_kamar] = @jenis_kamar, [kelas_kamar] = @kelas_kamar, [tarif] = @tarif WHERE [Id_kamar] = @original_Id_kamar AND (([nama_kamar] = @original_nama_kamar) OR ([nama_kamar] IS NULL AND @original_nama_kamar IS NULL)) AND (([jenis_kamar] = @original_jenis_kamar) OR ([jenis_kamar] IS NULL AND @original_jenis_kamar IS NULL)) AND (([kelas_kamar] = @original_kelas_kamar) OR ([kelas_kamar] IS NULL AND @original_kelas_kamar IS NULL)) AND (([tarif] = @original_tarif) OR ([tarif] IS NULL AND @original_tarif IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id_kamar" Type="Int32" />
                            <asp:Parameter Name="original_nama_kamar" Type="String" />
                            <asp:Parameter Name="original_jenis_kamar" Type="String" />
                            <asp:Parameter Name="original_kelas_kamar" Type="String" />
                            <asp:Parameter Name="original_tarif" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id_kamar" Type="Int32" />
                            <asp:Parameter Name="nama_kamar" Type="String" />
                            <asp:Parameter Name="jenis_kamar" Type="String" />
                            <asp:Parameter Name="kelas_kamar" Type="String" />
                            <asp:Parameter Name="tarif" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nama_kamar" Type="String" />
                            <asp:Parameter Name="jenis_kamar" Type="String" />
                            <asp:Parameter Name="kelas_kamar" Type="String" />
                            <asp:Parameter Name="tarif" Type="String" />
                            <asp:Parameter Name="original_Id_kamar" Type="Int32" />
                            <asp:Parameter Name="original_nama_kamar" Type="String" />
                            <asp:Parameter Name="original_jenis_kamar" Type="String" />
                            <asp:Parameter Name="original_kelas_kamar" Type="String" />
                            <asp:Parameter Name="original_tarif" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                 
                         
                </div>
              </div>
            </div>
    </form>

</asp:Content>


