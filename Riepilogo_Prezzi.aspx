<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Riepilogo_Prezzi.aspx.cs" Inherits="Generatore_Web.Riepilogo_Prezzi" %>

<%@ Register TagPrefix="cc" Namespace="Generatore_Classi.Controls" Assembly="Generatore_Classi" %>
<%@ Register Src="Verifiche_Opzioni.ascx" TagName="Verifiche_Opzioni" TagPrefix="uc1" %>
<%@ Register Src="Scelta_Voci.ascx" TagName="Scelta_Voci" TagPrefix="uc1" %>
<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel ID="upd_panel" runat="server">
        <ContentTemplate>
            <!-- corpo -->
            <div class="container content parentOverflowContainer">
                <div class="corpo-tabella">
                    <div class="scelta-voce">
                        <table class="table table-feature">
                            <tr>
                                <td>
                                    <table class="table-feature">
                                        <tr>
                                            <td class="tcenter" style="width:20%;">
                                                <h5>
                                                Riepilogo prezzi
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="btn-group btn-group-justified nomargin" role="group" aria-label="...">
                                                    <asp:LinkButton ID="btn_salva" runat="server" CssClass="btn btn-primary with-icon" OnClick="btn_salva_Click">
                                                        <span class="icon icon-salva"></span>Salva
                                                    </asp:LinkButton>
                                                    <asp:LinkButton ID="btn_annulla" runat="server" CssClass="btn btn-primary with-icon" OnClick="btn_annulla_Click">
                                                        <span class="icon icon-annulla"></span>Annulla
                                                    </asp:LinkButton>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="table-feature" id="tb_voce" runat="server" visible="false">
                                        <tr>
                                            <td class="tright" style="width:20%;">
                                                <h4>Sistema</h4> 
                                            </td>
                                            <td class="tleft">
                                                <h4>
                                                    <asp:Literal ID="ltl_voce_personalizzata" runat="server"></asp:Literal>
                                                </h4>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tright">
                                                Voce Personalizzata
                                            </td>
                                            <td class="tleft">
                                                <asp:TextBox ID="txt_ar_titolo" runat="server" MaxLength="256"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tright">
                                                Descrizione
                                            </td>
                                            <td class="tleft">
                                                <asp:TextBox ID="txt_ar_descrizione" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tright">
                                            </td> 
                                            <td colspan="1">
                                                <div class="row nomargin">
                                                    <div class="col-sm-5">
                                                        Quantit&agrave;
                                                        <asp:TextBox ID="txt_ar_qta" runat="server" Text="0"></asp:TextBox>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        Unit&agrave; mis.
                                                        <asp:DropDownList ID="ddl_ar_um" runat="server"></asp:DropDownList>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        Prezzo &euro;
                                                        <asp:TextBox ID="txt_ar_prezzo" runat="server" Text="0"></asp:TextBox>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        &nbsp;
                                                        <asp:LinkButton ID="btn_annulla_voce" runat="server" CssClass="btn btn-primary with-icon" OnClick="btn_annulla_voce_Click">
                                                            <span class="icon icon-annulla"></span>&nbsp;Annulla
                                                        </asp:LinkButton>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        &nbsp;
                                                        <asp:LinkButton ID="btn_aggiungi_voce" runat="server" CssClass="btn btn-primary with-icon" OnClick="btn_aggiungi_voce_Click">
                                                            <span class="icon icon-add"></span>&nbsp;Aggiungi
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="voce-dettaglio">
                        <h4 class="title tleft">
                            Dettagli delle voci</h4>
                        <nav class="project-navbar">
                            <div class="col-sm-5 active" id="div_materiali" runat="server">
                                <asp:LinkButton ID="btn_tab_materiali" runat="server" CssClass="project-navbar-voice" OnClick="btn_tab_Click" Tab="MT">
                                    Materiali
                                </asp:LinkButton>
                            </div>
                            <div class="col-sm-5" id="div_manodopera" runat="server">
                                <asp:LinkButton ID="btn_tab_manodopera" runat="server" CssClass="project-navbar-voice" OnClick="btn_tab_Click" Tab="MD">
                                    Manodopera
                                </asp:LinkButton>
                            </div>
                            <div class="col-sm-5" id="div_trasporti" runat="server">
                                <asp:LinkButton ID="btn_tab_trasporti" runat="server" CssClass="project-navbar-voice" OnClick="btn_tab_Click" Tab="TR">
                                    Trasporti
                                </asp:LinkButton>
                            </div>
                        </nav>
                        <div class="tabella" id="div_articoli" runat="server">
                            <div class="btn-group " role="group" aria-label="...">
                                <asp:LinkButton ID="btn_add_knauf" runat="server" CssClass="btn btn-standard btn-primary with-icon" OnClick="btn_add_knauf_Click">
                                    <span class="icon icon-add"></span><asp:Literal ID="ltl_add_knauf" runat="server">Aggiungi materiale Knauf</asp:Literal>
                                </asp:LinkButton>
                                <asp:LinkButton ID="btn_add_personalizzato" runat="server" CssClass="btn btn-standard btn-primary with-icon" OnClick="btn_add_personalizzato_Click">
                                    <span class="icon icon-add"></span><asp:Literal ID="ltl_add_personalizzato" runat="server">Materiale personalizzato</asp:Literal>
                                </asp:LinkButton>
                                <asp:LinkButton ID="btn_elimina_articolo" runat="server" CssClass="btn btn-standard btn-primary with-icon" OnClick="btn_elimina_articolo_Click">
                                    <span class="icon icon-annulla"></span>Elimina
                                </asp:LinkButton>
                                <asp:LinkButton ID="btn_move_up" runat="server" CssClass="btn btn-standard btn-primary with-icon" OnClick="btn_move_articolo_Click" Direzione="U">
                                    <span class="icon icon-up"></span>Su
                                </asp:LinkButton>
                                <asp:LinkButton ID="btn_move_down" runat="server" CssClass="btn btn-standard btn-primary with-icon" OnClick="btn_move_articolo_Click" Direzione="D">
                                    <span class="icon icon-down"></span>Gi&ugrave;
                                </asp:LinkButton>
                            </div>
                            <div style="overflow: auto;">
                                <table class="tcenter">
                                    <tr>
                                        <td class="selector">
                                        </td>
                                        <td class="tleft" style="width: 40%;">
                                            Descrizione
                                        </td>
                                        <td>
                                            Q.t&agrave;
                                        </td>
                                        <td>
                                            U.m.
                                        </td>
                                        <td>
                                            Prezzo &euro;
                                        </td>
                                        <td>
                                            Sc. %
                                        </td>
                                        <td>
                                            Cst. &euro; x1
                                        </td>
                                        <td>
                                            Costo &euro;
                                        </td>
                                        <td>
                                            No
                                        </td>
                                    </tr>
                                    <asp:Repeater ID="rpt_articoli" runat="server" OnItemCommand="rpt_articoli_ItemCommand"
                                            OnItemDataBound="rpt_articoli_ItemDataBound">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="selector">
                                                    <div class="checkbox checkbox-verifiche">
                                                        <asp:CheckBox ID="chk_articolo" runat="server" />
                                                        <label for="" id="lbl_articolo" runat="server">
                                                            <asp:Literal ID="ltl_cantiere_articoli_key" runat="server" Visible="false"></asp:Literal>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td class="tleft">
                                                    <asp:Literal ID="ltl_ar_titolo" runat="server"></asp:Literal>
                                                </td>
                                                <td class="tot">
                                                    <asp:TextBox ID="txt_ar_quantita" runat="server" AutoPostBack="true" OnTextChanged="txt_ar_quantita_OnTextChanged"></asp:TextBox>
                                                </td>
                                                <td class="tot">
                                                    <asp:Literal ID="ltl_ar_um" runat="server"></asp:Literal>
                                                </td>
                                                <td>
                                                    <asp:Literal ID="ltl_ar_prezzo" runat="server"></asp:Literal>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_ar_sconto" runat="server" AutoPostBack="true" OnTextChanged="txt_ar_sconto_OnTextChanged"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Literal ID="ltl_ar_prezzo_sc" runat="server"></asp:Literal>
                                                </td>
                                                <td class="tot">
                                                    <asp:Literal ID="ltl_ar_totale" runat="server"></asp:Literal>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater> 
                                    <tr class="others">
                                        <td colspan="1">
                                        </td>
                                        <td colspan="5" class="tot-label tleft">
                                            Costo unitario &euro;
                                        </td>
                                        <td class="tot">
                                            <asp:Literal ID="ltl_totale_unitario" runat="server"></asp:Literal>
                                        </td>
                                        <td colspan="2">
                                        </td>
                                    </tr>
                                    <tr class="others">
                                        <td colspan="1">
                                        </td>
                                        <td colspan="6" class="tot-label tleft">
                                            Costo totale &euro;
                                        </td>
                                        <td class="tot">
                                            <asp:Literal ID="ltl_totale" runat="server"></asp:Literal>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="tabella" id="div_aggiungi_articoli" runat="server" visible="false">
                            <div class="btn-group " role="group" aria-label="...">
                                <asp:LinkButton ID="btn_nuova_voce" runat="server" CssClass="btn btn-standard btn-primary with-icon" OnClick="btn_nuova_voce_Click">
                                    <span class="icon icon-add"></span>&nbsp;Aggiungi nuova voce personalizzata
                                </asp:LinkButton>
                            </div>
                            <div style="overflow: auto;">
                                <table class="tcenter">
                                    <tr>
                                        <td class="tleft" style="width: 40%;">
                                            Ricerca&nbsp;&nbsp;<asp:TextBox ID="txt_ricerca" runat="server" AutoPostBack="true" Width="100%" OnTextChanged="txt_ricerca_OnTextChanged"></asp:TextBox>
                                        </td>
                                        <td colspan="1">
                                            
                                        </td>
                                        <td colspan="4">
                                            <pager:MesysPager ID="pager1" runat="server" OnCommand="pager_Command" PageClause="Pagina"
                                                OfClause="di" GenerateGoToSection="false" GenerateToolTips="false" PageSize="25" Visible="false" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="tleft" style="width: 40%;">
                                            Descrizione
                                        </td>
                                        <td>
                                            Q.t&agrave;
                                        </td>
                                        <td>
                                            U.m.
                                        </td>
                                        <td>
                                            Prezzo &euro;
                                        </td>
                                        <td>
                                            Costo &euro;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <asp:Repeater ID="rpt_articoli_add" runat="server" OnItemCommand="rpt_articoli_add_ItemCommand"
                                            OnItemDataBound="rpt_articoli_add_ItemDataBound">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="tleft">
                                                    <asp:Literal ID="ltl_ar_titolo" runat="server"></asp:Literal>
                                                </td>
                                                <td class="tot">
                                                    <asp:TextBox ID="txt_ar_quantita" Width="100%" runat="server" AutoPostBack="true" OnTextChanged="txt_ar_add_quantita_OnTextChanged"></asp:TextBox>
                                                </td>
                                                <td class="tot">
                                                    <asp:Literal ID="ltl_ar_um" runat="server"></asp:Literal>
                                                </td>
                                                <td>
                                                    <asp:Literal ID="ltl_ar_prezzo" runat="server"></asp:Literal>
                                                </td>
                                                <td class="tot">
                                                    <asp:Literal ID="ltl_ar_totale" runat="server"></asp:Literal>
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="btn_add" runat="server" CssClass="btn btn-standard btn-primary with-icon" CommandName="ADD" >
                                                        <span class="icon icon-add"></span>
                                                    </asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- fine corpo -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="script" ContentPlaceHolderID="script" runat="server">
</asp:Content>
