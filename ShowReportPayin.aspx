<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ShowReportPayin.aspx.vb" Inherits="ShowReportPayin" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>POSWEB FOR BEST</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="App_Inc/majestic/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="App_Inc/majestic/vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="App_Inc/majestic/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="App_Inc/majestic/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="App_Inc/majestic/images/favicon.png" />
  <!-- font_th -->
  <link href="https://fonts.googleapis.com/css2?family=Mitr&display=swap" rel="stylesheet">
</head>
<style>
	.card-header-th{
		font-family:'mitr';
		font-size: 1.6rem !important;
	}
	.fs-1{
		font-size:1rem;
	}
	.font-mitr{
		font-family:'mitr';
	}
    .HeaderStyle{
        background-color: #53A0D5;
        color:White;
    }
</style>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid mt-2">
        <div class="table-responsive">
            <div class="text-center font-mitr">
                <h4><asp:Label ID="LblParam1" runat="server"></asp:Label></h4>
                <h5><asp:Label ID="LblParam2" runat="server"></asp:Label></h5>
                <h5><asp:Label ID="LblParam3" runat="server"></asp:Label></h5>
                <h6><asp:Label ID="LblParam4" runat="server"></asp:Label></h6>
                <h6><asp:Label ID="LblParam5" runat="server"></asp:Label></h6>
                <h6><asp:Label ID="LblHeader" runat="server"></asp:Label></h6>
            </div>
                    <asp:GridView ID="GridView1" class="table table-sm" runat="server" AutoGenerateColumns="False" ForeColor="Black" AlternatingRowStyle-BackColor="#DAF8FC" Width="100%" ShowFooter="True" >
                        <HeaderStyle CssClass="HeaderStyle"/>
                        <Columns>
                            
                            <asp:BoundField DataField="Branch" HeaderText="????????????" />
                            <asp:BoundField DataField="DocNo" HeaderText="????????????" />
                            <asp:BoundField DataField="Account" HeaderText="???????????" />
                            <asp:BoundField DataField="PayinDate" HeaderText="?????????" />
                            <asp:BoundField DataField="SubPay" HeaderText="????????????????" visible="False"/> 
                            <asp:BoundField DataField="ChequeNo" HeaderText="??????????" Visible="False" />
                            <asp:BoundField DataField="Note" HeaderText="??????????" /> 
                            <asp:BoundField DataField="CS" HeaderText="???????????" />  
                            <asp:BoundField DataField="Charge" HeaderText="????????????" />              
                            <asp:BoundField DataField="CQ" HeaderText="?????????" />                              
                            <asp:BoundField DataField="Sum" HeaderText="??????????" />   
                            <asp:BoundField DataField="CreatedBy" HeaderText="??????????????" Visible="False" />
                            <asp:BoundField DataField="DateRecord" HeaderText="????????????"  />                                
                            <asp:BoundField DataField="DateSystem" HeaderText="?????????? Server">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                           
     
                        </Columns>
                        <AlternatingRowStyle BackColor="#DAF8FC" />
                        <FooterStyle BackColor="SteelBlue" ForeColor="White" />
                    </asp:GridView>
            <div ID="LblNo1" runat="server" Visible="False" class="alert alert-danger alert-dismissible fade show lh-md mt-3 font-mitr text-center">
                <h5><i class="mdi mdi-alert-circle icon-md"></i> ???????????????????</h5>
            </div>
        </div>

        <div class="alert alert-danger alert-dismissible fade show lh-md mt-3 font-mitr">
            <div class="row">
                <div class="col-lg-1 col-12">
                    <span class="badge badge-danger fs-1">????????</span>
                </div>
                <div class="col-lg-11 col-12">
                    <u>????? Column ????????????????</u>
                    <ul class="list-unstyled">
                        <li>- ???? ?????? ??? ????????????????????????????</li>
                        <li>- ???? ???? ??? ????????????</li>
                    </ul>
                </div>
                <asp:Label ID="Label1" class="col-12" runat="server" Text="????????: ???????????????(??????) ???????????????????????????????(???????????) ????????????????????????????" Visible="False"></asp:Label>
            </div>
            <button type="button" class="close" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>        
        </div>
    </div>
    </form>
    
</body>
</html>
