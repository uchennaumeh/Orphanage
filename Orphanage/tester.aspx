<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tester.aspx.cs" Inherits="Orphanage.tester" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #content{
	overflow:auto;
	padding:10px;
	font-size:15px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
	text-align:justify;
	color:red;
}
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <div id="content" style="width: 1366px; height: 768px !important;">
            <asp:Label ID="Label1" runat="server" Text="TESTER"></asp:Label>
        </div>
    </form>
</body>
</html>
