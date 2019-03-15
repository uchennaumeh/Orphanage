<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="Orphanage.Login2" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Orphanage/Donations Management Sysytem">
    <meta name="keywords" content="Orphanage">
    <title>Orphanage Donations Scheme</title>
    <!-- Bootstrap -->
    <link href="csss/bootstrap.min.css" rel="stylesheet">
    <link href="csss/style.css" rel="stylesheet">
    <link href="csss/font-awesome.min.css" rel="stylesheet">
    <link href="csss/fontello.css" rel="stylesheet">
    <link rel="stylesheet" type="text/csss" href="csss/animsition.min.css">
    <link rel="stylesheet" type="text/csss" href="csss/simple-slider.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Merriweather:300,300i,400,400i,700,700i" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="jss/simple-slider.js"></script>
    <link href="csss/simple-slider.css" rel="stylesheet" type="text/css" />
</head>

<body class="animsition">
    <form id="form1" runat="server">



        <div class="top-bar">
            <!-- top-bar -->
            <div class="container">
                <div class="row">
                    <div class="col-md-4 hidden-xs hidden-sm">
                        <p class="mail-text">COLLINS ORPHANAGE</p>
                    </div>

                </div>
            </div>
        </div>
        <!-- /.top-bar -->
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-12 col-xs-6">
                        <!-- logo -->
                        <div class="logo">
                            <a href="#">
                                <img src="imgs/ball.png" alt="Orphanage"></a>
                        </div>
                    </div>
                    <!-- logo -->



                </div>
            </div>
        </div>


        <br />
        <br />
        <div class=" ">
            <!-- content start -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="wrapper-content bg-white pinside40">
                            <div class="contact-form mb60">
                                <div class=" ">

                                    <div class="col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
                                        <table width="100%">
                                            <tr>

                                                <td colspan="3">
                                                    <asp:Label ID="Label1" runat="server" Text="test"></asp:Label>
                                                </td>


                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <div class="form-group">
                                                            <asp:Label ID="Label2" runat="server" Text="test"></asp:Label>
                                                        </div>
                                                    </div>
                                                    
                                                </td>
                                                <td>
                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <div class="form-group">
                                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control input-md"></asp:TextBox>
                                                        </div>

                                                    </div>
                                                    

                                                </td>
                                                <td></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text="test"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control input-md"></asp:TextBox>
                                                </td>
                                                <td></td>

                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>

                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <table align="center" cellpadding="2" style="width: 70%">
            <tr>
                <td>
                    <asp:TextBox ID="txtUsername1" Visible="false" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtRole" Visible="false" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtBranch" Visible="false" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtDepartment" Visible="false" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtStaffID" Visible="false" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCount" Visible="false" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtNewCount" Visible="false" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox8" Visible="false" runat="server"></asp:TextBox></td>
            </tr>
        </table>

        <div class="tiny-footer">
            <!-- tiny footer -->
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-6">
                        <p>© Copyright 2017 | JucheyTech Software Nigeria</p>
                    </div>
                    <div class="col-md-6 col-sm-6 text-right col-xs-6">
                        <p>Terms of use | Privacy Policy</p>
                    </div>
                </div>
            </div>
        </div>

        <a href="#0" class="cd-top" title="Go to top">Top</a>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="jss/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="jss/bootstrap.min.js"></script>
        <script type="text/javascript" src="jss/menumaker.js"></script>
        <!-- animsition -->
        <script type="text/javascript" src="jss/animsition.js"></script>
        <script type="text/javascript" src="jss/animsition-script.js"></script>
        <!-- sticky header -->
        <script type="text/javascript" src="jss/jquery.sticky.js"></script>
        <script type="text/javascript" src="jss/sticky-header.js"></script>
        <!-- Back to top script -->
        <script src="jss/back-to-top.js" type="text/javascript"></script>
        <script type="text/javascript" src="jss/simple-slider.js"></script>
        <script type="text/javascript" src="jss/calculator.js"></script>
    </form>
</body>

</html>
