<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="userRawatInap.aspx.vb" Inherits="userRawatInap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
     
           <!-- Datatables -->
           <div class="col-lg-12">
             <div class="card mb-4">
               <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                 <h6 class="m-0 font-weight-bold text-primary">Data Rawat Inap</h6>
               </div>
               <div class="table-responsive p-3">
                   <asp:GridView runat="server" class="table align-items-center table-flush" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id_rawatinap" DataSourceID="SqlDataSource1" >
                       <Columns>
                           <asp:BoundField DataField="Id_rawatinap" HeaderText="NO" ReadOnly="True" SortExpression="Id_rawatinap" />
                           <asp:BoundField DataField="nama_pasien" HeaderText="Nama Pasien" SortExpression="nama_pasien" />
                           <asp:BoundField DataField="jenis_kelamin" HeaderText="Jenis Kelamin" SortExpression="jenis_kelamin" />
                           <asp:BoundField DataField="penyakit" HeaderText="Penyakit" SortExpression="penyakit" />
                           <asp:BoundField DataField="kontak" HeaderText="Kontak" SortExpression="kontak" />
                       </Columns>
                   </asp:GridView>
                    
                  
                     
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rumahsakitConnectionString %>" SelectCommand="SELECT * FROM [rawatinap
]"></asp:SqlDataSource>
                    
                  
                     
               </div>
             </div>
           </div>
   </form>
</asp:Content>

