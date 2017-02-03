<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Storico_Progetti.aspx.cs" Inherits="Generatore_Web.Storico_Progetti" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheets/styles.css" media="screen" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,400i,500,600,700" rel="stylesheet">
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
                            <h4>Storico progetti</h4>
                        </div>
                    </div>
                    <div class="overflow-modal-container">
                        <div class="table-container">
                            <table class="table table-feature">
                                <asp:Repeater ID="rpt_cantiere" runat="server" OnItemCommand="rpt_cantiere_ItemCommand"
                                        OnItemDataBound="rpt_cantiere_ItemDataBound">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="tmiddle tleft">
                                                <span><asp:Literal ID="ltl_ca_data_offerta" runat="server"></asp:Literal></span>
                                                <h4><asp:Literal ID="ltl_ca_cantiere" runat="server"></asp:Literal></h4>
                                                <h5><asp:Literal ID="ltl_ca_committente" runat="server"></asp:Literal></h5>
                                            </td>
                                            <td class="tmiddle tright">
                                                <asp:Literal ID="ltl_indirizzo" runat="server"></asp:Literal>
                                            </td>
                                            <td class="tmiddle">
                                                <asp:LinkButton ID="btn_del" runat="server" CommandName="DEL">
                                                    <i class="fa fa-trash"></i>
                                                </asp:LinkButton>
                                                &nbsp;
                                                <asp:LinkButton ID="btn_get" runat="server" CommandName="GET">
                                                    <i class="fa fa-chevron-right"></i>
                                                </asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater> 
                            </table>
                        </div>
                    </div>
                </div>
                <div class="graphic-button">
                    <asp:LinkButton ID="btn_annulla" runat="server" CssClass="button" data-dismiss="modal">
                        <i class="fa fa-times-circle-o"></i>
                    </asp:LinkButton>
                </div>
            </div>
            <!-- fine corpo -->
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
    <script type="text/javascript">
        function scegliCantiere() {

        }
    </script>
</body>
</html>
