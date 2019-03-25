<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MakeDonation.aspx.cs" Inherits="Orphanage.MakeDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="collapse searchbar" id="searchbar">
        <div class="search-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">Go!</button>
                            </span>
                        </div>
                        <!-- /input-group -->
                    </div>
                    <!-- /.col-lg-6 -->
                </div>
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
                                    <div class="mb60  section-title text-center  ">
                                        <!-- section title start-->
                                        <h1>Make A Donation</h1>
                                        <p>Thanks for you donations, please note that this can be monitored by you!!!</p>
                                        <asp:label id="lblError" runat="server" font-bold="True" font-size="Large" forecolor="Red"></asp:label>
                                    </div>
                                </div>
                                <div class="row">
                                    <form class="contact-us" method="post" action="contact-us.php">
                                        <div class=" ">
                                            <!-- Text input-->
                                            <div class="col-md-4 col-sm-12 col-xs-12">
                                                <div class="form-group">

                                                    <label class="sr-only control-label" for="name">name<span class=" "> </span></label>

                                                    <asp:dropdownlist id="drpBeneficiary" runat="server" class="form-control input-md"></asp:dropdownlist>
                                                    <asp:requiredfieldvalidator id="rfvBeneficiary" runat="server" errormessage="***" controltovalidate="drpBeneficiary" forecolor="Red" initialvalue="0"></asp:requiredfieldvalidator>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <label class="sr-only control-label" for="phone">DonorType<span class=" "> </span></label>

                                                    <asp:dropdownlist id="drpDonorType" runat="server" class="form-control input-md"></asp:dropdownlist>
                                                    <asp:requiredfieldvalidator id="rfvDonorType" runat="server" errormessage="***" controltovalidate="drpDonorType" forecolor="Red" initialvalue="0" ></asp:requiredfieldvalidator>
                                                    <br />
                                                    
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="col-md-4 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <label class="sr-only control-label" for="email">code<span class=" "> </span></label>

                                                    <asp:textbox id="txtDonorCode" runat="server" class="form-control input-md" Font-Bold="True" ReadOnly="True"></asp:textbox>

                                                </div>
                                            </div>
                                            </div>
                                        </div>

                                            <div class="row">
                                              
                                                <div class=" ">

                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <div class="form-group">

                                                            <label class="sr-only control-label" for="name">name<span class=" "> </span></label>

                                                            <asp:dropdownlist id="drpItemCategory" AutoPostBack="true" runat="server" class="form-control input-md" OnSelectedIndexChanged="drpItemCategory_SelectedIndexChanged"></asp:dropdownlist>
                                                            <asp:requiredfieldvalidator id="rfvItemCat" runat="server" errormessage="***" controltovalidate="drpItemCategory" forecolor="Red" initialvalue="0"></asp:requiredfieldvalidator>
                                                        </div>
                                                    </div>
                                                    <br />



                                                </div>
                                               
                                            </div>
                                            <div class="row">
                                          
                                                <div class=" ">

                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <div class="form-group">

                                                            <label class="sr-only control-label" for="name">subCat<span class=" "> </span></label>

                                                            <asp:dropdownlist id="drpItemSubCat" runat="server" class="form-control input-md" AutoPostBack="true" OnSelectedIndexChanged="drpItemSubCat_SelectedIndexChanged"></asp:dropdownlist>
                                                            <asp:requiredfieldvalidator id="rfvItemSubCat" runat="server" errormessage="***" controltovalidate="drpItemSubCat" forecolor="Red" initialvalue="0"></asp:requiredfieldvalidator>
                                                        </div>
                                                    </div>
                                                    <br />



                                                </div>
                                              
                                            </div>
                                            <div class="row">
                                              
                                                <div class=" ">

                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <div class="form-group">

                                                            <label class="sr-only control-label" for="name">name<span class=" "> </span></label>

                                                            <asp:dropdownlist id="drpItemType" runat="server" AutoPostBack="true" class="form-control input-md" OnSelectedIndexChanged="drpItemType_SelectedIndexChanged"></asp:dropdownlist>
                                                            <asp:requiredfieldvalidator id="rfvItemType" runat="server" errormessage="***" controltovalidate="drpItemType" forecolor="Red" initialvalue="0"></asp:requiredfieldvalidator>
                                                        </div>
                                                    </div>
                                                    <br />



                                                </div>
                                             
                                            </div>
                                            <div class="row">
                                               
                                                <div class=" ">

                                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <div class="form-group">

                                                            <label class="sr-only control-label" for="name">name<span class=" "> </span></label>

                                                            <asp:dropdownlist id="drpItemMake" runat="server" AutoPostBack="true" class="form-control input-md" OnSelectedIndexChanged="drpItemMake_SelectedIndexChanged"></asp:dropdownlist>
                                                            <asp:requiredfieldvalidator id="rfvItemMake" runat="server" errormessage="***" controltovalidate="drpItemMake" forecolor="Red" initialvalue="0"></asp:requiredfieldvalidator>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-3 col-xs-3">
                                                        <div class="form-group">

                                                            <label class="sr-only control-label" for="name">name<span class=" "> </span></label>

                                                            <asp:dropdownlist id="drpItemCount" runat="server" class="form-control input-md"></asp:dropdownlist>
                                                            <asp:requiredfieldvalidator id="rfvItemCount" runat="server" errormessage="***" controltovalidate="drpItemCount" forecolor="Red" initialvalue="0"></asp:requiredfieldvalidator>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-2 col-xs-2">
                                                        <div class="form-group">

                                                            <label class="sr-only control-label" for="name">name<span class=" "> </span></label>

                                                            <asp:dropdownlist id="drpItemUoM" runat="server" class="form-control input-md"></asp:dropdownlist>
                                                            <asp:requiredfieldvalidator id="rfvItemUoM" runat="server" errormessage="***" controltovalidate="drpItemUoM" forecolor="Red" initialvalue="0"></asp:requiredfieldvalidator>
                                                        </div>
                                                    </div>
                                                  



                                                </div>
                                            
                                            </div>
                                <div class="row">
                                    <div class=" ">
                                        <div class="col-md-4 col-sm-4 col-xs-4">
                                                        <div class="form-group">

                                                            <label class="sr-only control-label" for="name">imageup<span class=" "> </span></label>

                                                            <asp:fileupload id="fileUpload1" runat="server" class="form-control input-md"></asp:fileupload>
                                                            <asp:requiredfieldvalidator id="rfvUpload" runat="server" errormessage="***" controltovalidate="fileUpload1" forecolor="Red"></asp:requiredfieldvalidator>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-3 col-xs-3">
                                                        <div class="form-group">

                                                            <label class="sr-only control-label" for="name">comments<span class=" "> </span></label>

                                                            <asp:textbox id="txtComment" runat="server" class="form-control input-md" Height="126px" TextMode="MultiLine" Width="331px" placeholder="Upload Item photo and make additional comments here"></asp:textbox>
                                                            <asp:requiredfieldvalidator id="rfvComment" runat="server" errormessage="***" controltovalidate="txtComment" forecolor="Red"></asp:requiredfieldvalidator>
                                                        </div>
                                                    </div>
                                    </div>
                                </div>
                                            


                                                    
                                          


                                            


                                            <div class="col-md-12 col-xs-12">
                                                <asp:button id="btnDonate" runat="server" text="MAKE DONATION" class="btn btn-default" OnClick="btnDonate_Click" />
                                               
                                            </div>
                                            
                                            <br />
                                            <br />
                                            
                                        </div>
                                    </form>
                                
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
                <asp:textbox id="txtUsername" visible="false" runat="server"></asp:textbox>
            </td>
            <td>
                <asp:textbox id="txtRole" visible="false" runat="server"></asp:textbox>
            </td>
            <td>
                <asp:textbox id="txtBranch" visible="false" runat="server"></asp:textbox>
            </td>
            <td>
                <asp:textbox id="txtDepartment" visible="false" runat="server"></asp:textbox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:textbox id="txtStaffID" visible="false" runat="server"></asp:textbox>
            </td>
            <td>
                <asp:textbox id="txtCount" visible="false" runat="server"></asp:textbox>
            </td>
            <td>
                <asp:textbox id="txtNewCount" visible="false" runat="server"></asp:textbox>
            </td>
            <td>
                <asp:textbox id="TextBox8" visible="false" runat="server"></asp:textbox>
            </td>
        </tr>
    </table>
</asp:Content>
