<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="DB_Query.aspx.cs" Inherits="Generatore_Web.DB_Query" %>

<%@ Register Src="Controls/rTextNumero.ascx" TagName="rTextNumero" TagPrefix="cc" %>
<%@ Register Src="Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="Controls/rTextOra.ascx" TagName="rTextOra" TagPrefix="cc" %>
<%@ Register Src="Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h4>
        DB QUERY</h4>
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <li class="active" id="li_tab_1" runat="server"><a href="#<%=tab_1.ClientID%>" data-toggle="tab">
                ESECUZIONE DINAMCA DI QUERY</a></li>
        </ul>
        <div class="tab-content">
            <!-- Tabs 1-->
            <div class="tab-pane active" id="tab_1" runat="server">
                <div class="form-panel">
                    <div class="row">
                        <div class="form-horizontal" id="div_overview" runat="server">
                            <div class="row" style="margin-left: 20px; margin-right: 20px;">
                                <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
                                    visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                        x
                                    </button>
                                    <i class="fa-lg fa fa-warning"></i><strong>&nbsp;Attenzione!</strong>
                                    <asp:Literal ID="ltl_messaggio_ko" runat="server"></asp:Literal>
                                </div>   
                                <div class="alert alert-success alert-dismissable" id="div_message_ok" runat="server"
                                    visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                        x
                                    </button>
                                    <i class="fa-lg fa fa-info"></i><strong>&nbsp;</strong>
                                    <asp:Literal ID="ltl_messaggio_ok" runat="server"></asp:Literal>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12" style="padding: 25px;">
                                        <cc:rTextBox id="txt_query" runat="server" TextMode="MultiLine" Rows="10" Autopostback="false"
                                            label="" icon="" form_vertical="true" />
                                    </div>
                                    <div class="col-sm-12" style="padding-top: 25px; text-align: center;">
                                        <asp:LinkButton ID="btn_esegui" runat="server" CssClass="btn btn_mps" CommandArgument="MOD"
                                            OnClick="btn_esegui_Click">
                                            ESEGUI
                                        </asp:LinkButton>
                                    </div> 
                                    <div class="col-sm-12" style="padding-top: 25px; text-align: left;">
                                        <asp:Literal ID="ltl_risultato" runat="server"></asp:Literal>
                                    </div>
                                    <div class="col-sm-12" style="padding-top: 25px; text-align: left;">
                                        <asp:DataGrid id="DGResult" runat="server" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="true">
			                                <AlternatingItemStyle BackColor="#fefefe"></AlternatingItemStyle>
			                                <ItemStyle ForeColor="Black" BackColor="#ffffff"></ItemStyle>
			                                <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#666666" HorizontalAlign="Left"></HeaderStyle>
			                                <FooterStyle ForeColor="#666666" BackColor="#ffffff"></FooterStyle>
                                        </asp:DataGrid> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
