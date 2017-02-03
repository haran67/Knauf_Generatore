<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cantiere.aspx.cs" Inherits="Generatore_Web.fCantiere" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                    <table class="table table-feature">
                        <tr>
                            <td>
                                <h4>
                                    Identificativi</h4>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table table-feature tright">
                                    <tr>
                                        <td style="width: 30%">
                                            Committente
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_ca_committente" runat="server" MaxLength="256"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%">
                                            Cantiere
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_ca_cantiere" runat="server" MaxLength="256"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table table-feature tright">
                                    <tr>
                                        <td style="width: 30%">
                                            Localit&agrave;
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_ca_localita" runat="server" MaxLength="256"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%">
                                            Indirizzo
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_ca_indirizzo" runat="server" MaxLength="256"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%">
                                            Data
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_ca_data_offerta" runat="server" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table table-feature tright">
                                    <tr>
                                        <td style="width: 30%">
                                            Funzionario tecnico
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_ca_funzionario" runat="server" MaxLength="256"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table table-feature tright">
                                    <tr>
                                        <td style="width: 30%">
                                            Note
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_ca_note" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="graphic-button">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" data-dismiss="modal" OnClientClick="salvaCantiere();">
                        <i class="fa fa-check-circle-o"></i>
                    </asp:LinkButton>
                    <asp:LinkButton ID="btn_salva" runat="server" CssClass="button" data-dismiss="modal" OnClick="btn_salva_Click" Visible="false">
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
    <script type="text/javascript">
        function salvaCantiere() {

            PageMethods.SalvaCantiere($('#<%=txt_ca_cantiere.ClientID%>').val(), $('#<%=txt_ca_committente.ClientID%>').val(), $('#<%=txt_ca_data_offerta.ClientID%>').val(), $('#<%=txt_ca_funzionario.ClientID%>').val(), $('#<%=txt_ca_indirizzo.ClientID%>').val(), $('#<%=txt_ca_localita.ClientID%>').val(), $('#<%=txt_ca_note.ClientID%>').val(), PMSuccess, PMFailure);
        }
    </script>
</body>
</html>
