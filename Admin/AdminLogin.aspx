<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cineplex - Administrator Login</title>

    <link href="Content/bootstrap.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: inherit;
            border: 3px solid #0000FF;
            height: 196px;
        }
        .auto-style3 {
            width: inherit;
            padding: 4px;
        }
        .col-md-4 {
            width: 445px;
            padding: 2px;
        }
        .auto-style5 {
            width: 4px;
            padding: 4px;
        }
        .auto-style6 {
            width: inherit;
            padding: 4px;
        }
        .auto-style7 {
            width: inherit;
            border: 1px solid #2E6DA4;
        }
        .auto-style8 {
            width: inherit;
        }
        .auto-style9 {
            height: inherit;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
<div class = "container-fluid">

<div class="jumbotron" style="border:1px solid #888;box-shadow:0px 2px 5px #ccc;">

                <h1>Cineplex - Administrator Login</h1>
</div>


                <table class="auto-style7">
                    <tr>
                        <td class="auto-style8" rowspan="5"><img src="https://vehemenceforcinema.files.wordpress.com/2015/07/20150224045552cinema_neon_sign_059-c14-c.jpg" class="img-rounded" alt="Cinque Terre" width="400" height="200"/></td>
                        <td class="auto-style9"></td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td> <asp:TextBox ID="UserName" runat="server" Width="188px" MaxLength="16" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td>  <asp:TextBox ID="Passwords" runat="server" Width="188px" /></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><asp:Literal ID="Literal1" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><asp:Button ID="Login" runat="server"  Text="Log In" OnClick="Login_Click" /></td>
                    </tr>
    </table>


                <br/>
                <br/>

    <div class="col-xs-12" style="height:75px;"></div>

            <div class="row">

                <div class="col-md-4">
                    <img src="http://www.clker.com/cliparts/c/b/6/c/13663719191300658152cinema.svg.hi.png" class="img-rounded" alt="Cinque Terre" width="250" height="250"/>
                </div>

                <div class="col-md-4">
                    <img src="https://cdn0.iconfinder.com/data/icons/icostrike-characters/512/admin-512.png" class="img-rounded" alt="Cinque Terre" width="250" height="250"/>
                </div>

                <div class="col-md-4">
                    <img src="http://simpleicon.com/wp-content/uploads/computer-2.png" class="img-rounded" alt="Cinque Terre" width="250" height="250"/>
                </div>
           </div>



            <div class="row">

            <div class="col-md-4">           
                        The members of Cineplex. met as childhood friends of The Admin Gang.
                        All the members were under the age of twenty when the Cineplex group
                        was formed. The group was formed from three separate groups and two
                        individual artists, directors and business partners.
            </div>

            <div class="col-md-4">
                        They usually are just typical humans who, unlike others, believe in
                        good Admin Work, even more, they are viligant to maintaining a good
                        website. One of the most recurring reasons to go into the Admin
                        lifestyle is a past tragic experience with poorly designed  websites
            </div>

            <div class="col-md-4">
                        All Cineplex servers are Fast, efficient and reliable Systems, build
                        by the Cybertron Corporation. The complete system is integrated and
                        powered by the Tesseract. Adopted by Cineplex Syndicate into their
                        Business in 1777. The new and exciting New Research and development,
                        for interdimensional travel and exploration.
            </div>

    </div>
</div>
</form>

    <br />

                


</body>
</html>
