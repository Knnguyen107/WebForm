<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_ControlPanel.aspx.cs" Inherits="Admin.Admin_ControlPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Widgets/styles/jqx.base.css" type="text/css"/>
    <link href="Content/bootstrap.css" rel="stylesheet"/>

    
    <script type="text/javascript" src="JqScripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Widgets/jqxcore.js"></script>
    <script type="text/javascript" src="Widgets/jqxdatetimeinput.js"></script>
    <script type="text/javascript" src="Widgets/jqxcalendar.js"></script>
    <script type="text/javascript" src="Widgets/globalization/globalize.js"></script>
    <script type="text/javascript" src="jquery-1.10.2.js"></script>
    <script type="text/javascript" src="datepicker.js"></script>


    <style>
        #footer {
          background-color:#414141;
        }

        #footer a {
          color:#efefef;
        }
    </style>

    <title>Cineplex - Admin Control Panel</title>
</head>

<body>
    <form id="form1" runat="server">
        <div class = "container-fluid">

        <div class="jumbotron" style="border:1px solid #888;box-shadow:0px 2px 5px #ccc;">

                        <h1 align="center">Cineplex - Administrator Control Panel</h1>
        </div>

        <!-- Nav Panel -->
        <div class="row">
          <div class="col-md-9 col-md-push-3">
        <!-- NP - 1 -->
          </div>
        <!-- NP - 1 -->

        <!-- NP - 2 -->
          <div class="col-md-3 col-md-pull-9">

                <div id='content'>
                  <script type="text/javascript">
                      $(document).ready(function () {
                          $("#jqxcalendar").jqxCalendar({ width: '250px', height: '250px' });
                          $('#jqxcalendar').bind('valuechanged', function (event) {
                              var date = event.args.date;
                              $("#log").text(date.toDateString());
                          });
                      });
                  </script>  
                  <div id='jqxcalendar'></div>
                  <div id='log'></div>
                </div>
          </div>
        <!-- NP - 2 -->

        </div>
        <!-- Nav Panel -->

        <div class="row">
          <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
          <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
          <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
        </div>

            <!-- Data Edit -->
        <div class="row">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Movie_ID" DataSourceID="MovieEdit" Height="386px" Width="97%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Movie_ID" HeaderText="Movie_ID" InsertVisible="False" ReadOnly="True" SortExpression="Movie_ID" />
                        <asp:BoundField DataField="Movie_Title" HeaderText="Movie_Title" SortExpression="Movie_Title" />
                        <asp:BoundField DataField="Short_Description" HeaderText="Short_Description" SortExpression="Short_Description" />
                        <asp:BoundField DataField="Long_Description" HeaderText="Long_Description" SortExpression="Long_Description" />
                        <asp:BoundField DataField="Poster" HeaderText="Poster" SortExpression="Poster" />
                        <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                        <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    </Columns>
                    <EditRowStyle BorderStyle="Groove" HorizontalAlign="Center" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="MovieEdit" runat="server" ConnectionString="<%$ ConnectionStrings:WDT_A2ConnectionString %>" SelectCommand="Current_Movies_Info"></asp:SqlDataSource>

        </div>
            <!-- Data Edit -->

        <div class="row">
          <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
          <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
          <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
        </div>



            <div class="col-xs-12" style="height:500px;"></div>
        </div>

        <!-- Footer START -->

        
        <div id="footer">
          <div class="container">
            <p class="text-muted"> Cineplex - Super Galaxy Gurren Lagann - Corporation <a href=""> [    Cineplex    ]</a></p>
          </div>
        </div>
        <!-- Footer END -->
    </form>
</body>
</html>
