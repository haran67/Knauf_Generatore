<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Certificati.aspx.cs" Inherits="Generatore_Web.fCertificati" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheets/styles.css" media="screen" rel="stylesheet" type="text/css">
    <style type="text/css">
        .clearfix:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }
    </style>
</head>
<body class="body-tabella">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="src_manager" runat="server" EnablePageMethods="true" EnableScriptGlobalization="true" EnableScriptLocalization="true">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="upd_panel" runat="server">
        <ContentTemplate>
            <!-- corpo -->
            <div class="container-fluid content content-modal">
                <div class="corpo-tabella">
                    <div class="row">
                        <div class="col-sm-12">
                            <h4>Riferimenti Normativi</h4>
                        </div>
                    </div>
                    <div class="overflow-modal-container">
                        <div class="table-container">
                            <table class="table table-feature">
                                <asp:Repeater ID="rpt_certificati" runat="server" OnItemCommand="rpt_certificati_ItemCommand"
                                        OnItemDataBound="rpt_certificati_ItemDataBound">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="tmiddle tleft">
                                                <div class="checkbox right fullwidth checkbox-verifiche">
                                                    <asp:CheckBox ID="chk_certificato" runat="server" />
                                                    <label for="" id="lbl_certificato" runat="server">
                                                        <asp:Literal ID="ltl_certificato" runat="server"></asp:Literal>
                                                        <asp:Literal ID="ltl_certificato_key" runat="server" Visible="false"></asp:Literal>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater> 
                            </table>
                        </div>
                    </div>
                </div>
                <div class="graphic-button">
                    <asp:LinkButton ID="btn_salva" runat="server" CssClass="button" OnClick="btn_salva_Click">
                        <i class="fa fa-check-circle-o"></i>
                    </asp:LinkButton>
                    <asp:LinkButton ID="btn_annulla" runat="server" CssClass="button" data-dismiss="modal">
                        <i class="fa fa-times-circle-o"></i>
                    </asp:LinkButton>
                </div>
            </div>
            <!-- fine corpo -->
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
