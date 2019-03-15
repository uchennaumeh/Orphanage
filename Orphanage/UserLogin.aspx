<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Orphanage.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<style type="text/css">
body {
	margin:0;
	background-color:#369;
}
hr{
	color:#FFF
}
#content{
	overflow:auto;
	padding:10px;
	font-size:15px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
	text-align:justify;
	color:#FFF;
}
#content img{
	text-align:center;
}
.style40 {font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: small;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="content" style="width: 730px; height: 430px !important;">
<table width="100%" border="0" cellpadding="0">
  <tr>
    <td width="75%"><p style="font-size:larger">:: USER LOGIN ::</p>
      <hr />
      <table width="539" border="0" cellspacing="0" cellpadding="0">
          <tr>
              <td></td>
              <td>
                  <asp:Label ID="lblError" runat="server" Text="" Font-Bold="True" ForeColor="#FF3300"></asp:Label></td>
          </tr>
        <tr>
          <td width="77" valign="top"><div align="right" class="style40">User ID: </div></td>
          <td width="462" align="left" valign="top" style="padding-left:8px"><span class="style40">
            <label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
              
            </label>
          </span></td>
        </tr>
          <tr>
              <td>
                  &nbsp;
              </td>
          </tr>
        <tr>
          <td valign="top"><div align="right" class="style40">Password: </div></td>
          <td align="left" valign="top" style="padding-left:8px"><span class="style40">
            <label>
              <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </label>
          </span></td>
        </tr>
        <tr>
          <td valign="top"><div align="right" class="style40">&nbsp;</div></td>
          <td align="left" valign="top" style="padding-left:8px"><span class="style40">
            <label>
            
            </label>
          </span></td>
        </tr>
        <tr>
          <td valign="top"><div align="right" class="style40"></div></td>
          <td align="left" valign="top" style="padding-left:8px"><span class="style40">
            <label>
                <asp:Label ID="Label1" runat="server" Text="Click "></asp:Label><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF0066" NavigateUrl="~/5.html">Here</asp:HyperLink><asp:Label ID="Label2" runat="server" Text="To Register a New Account"></asp:Label>
            </label>
          </span></td>
        </tr>
        <tr>
          <td valign="top">&nbsp;</td>
          <td valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td valign="top">&nbsp;&nbsp;</td>
          <td valign="top"><label>
              &nbsp;&nbsp;<asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
            
            
          </label></td>
        </tr>
      </table>
      </p></td>
    </tr>
  </table>

</div>
    </form>
</body>
</html>
