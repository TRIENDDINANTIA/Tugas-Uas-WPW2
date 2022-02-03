<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="userKama.aspx.vb" Inherits="userKama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
     
           <!-- Datatables -->
           <div class="col-lg-12">
             <div class="card mb-4">
               <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                 <h6 class="m-0 font-weight-bold text-primary">Data Kamar</h6>
               </div>
               <div class="table-responsive p-3">
                   <asp:GridView runat="server" class="table align-items-center table-flush" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id_kamar" DataSourceID="SqlDataSource1" >
                       <Columns>
                           <asp:BoundField DataField="Id_kamar" HeaderText="No" ReadOnly="True" SortExpression="Id_kamar" />
                           <asp:BoundField DataField="nama_kamar" HeaderText="Nama Kamar" SortExpression="nama_kamar" />
                           <asp:BoundField DataField="jenis_kamar" HeaderText="jenis Kamar" SortExpression="jenis_kamar" />
                           <asp:BoundField DataField="kelas_kamar" HeaderText="Kelas Kamar" SortExpression="kelas_kamar" />
                           <asp:BoundField DataField="tarif" HeaderText="Tarif" SortExpression="tarif" />
                       </Columns>
                       
                   </asp:GridView>
                     
                  
                     
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rumahsakitConnectionString %>" SelectCommand="SELECT * FROM [kamar]"></asp:SqlDataSource>
                     
                  
                     
               </div>
             </div>
           </div>
   </form>
</asp:Content>

