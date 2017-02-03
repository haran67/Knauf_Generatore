<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Index.aspx.cs" Inherits="Generatore_Web.Index" ValidateRequest="false" %>

<%@ Register TagPrefix="cc" Namespace="Generatore_Classi.Controls" Assembly="Generatore_Classi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="plugins/bootstrap-summernote/summernote.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel ID="upd_panel" runat="server">
        <ContentTemplate>
            <!-- corpo -->
            <div class="container content parentOverflowContainer">
                <!-- lista catalogo LATO SX -->
                <div class="col-md-6 col-xl-4 colonnaSX">
                    <h3 class="cat-list-title otherOneOverflowSX">
                        Catalogo</h3>

                    <div class="row no-gutters overflowContainerSX" id="div_sistemi" runat="server">
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs cat-list tabs-left main">
                                <asp:Repeater ID="rpt_sistemi" runat="server" OnItemCommand="rpt_sistemi_ItemCommand"
                                        OnItemDataBound="rpt_sistemi_ItemDataBound">
                                    <ItemTemplate>
                                        <li class="action" id="li_sistema" runat="server">
                                            <asp:LinkButton ID="btn_sistema" runat="server" CommandName="SISTEMA">
                                                <i class="icon-pareti" id="i_icona_sistema" runat="server">&nbsp;</i>
                                                <asp:Literal ID="ltl_sistema" runat="server"></asp:Literal>
                                            </asp:LinkButton>
                                            <asp:LinkButton ID="btn_verifiche" runat="server" CommandName="VERIFICA" data-toggle="modal" data-target=".bs-example-modal-sm"
                                                CssClass="action-link">
                                                <span class="icon icon-impostazioni"></span>
                                            </asp:LinkButton>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>

                    <div class="row no-gutters sub-content-container overflowContainerSX" id="div_sottosistemi" runat="server">
                        <div class="fixed-width">
                            <ul class="nav nav-tabs tabs-left cat-list-icon sideways">
                                <asp:Repeater ID="rpt_sistemi_sub" runat="server" OnItemCommand="rpt_sistemi_sub_ItemCommand"
                                        OnItemDataBound="rpt_sistemi_sub_ItemDataBound">
                                    <ItemTemplate>
                                        <li class="" id="li_sistema" runat="server">
                                            <asp:LinkButton ID="btn_sistema" runat="server" CommandName="SISTEMA">
                                                &nbsp;
                                            </asp:LinkButton>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="row-fluid">
                            <div class="sub-content">
                                <ul class="nav nav-tabs cat-list tabs-left secondary">
                                    <li class="category-title ">
                                        <asp:LinkButton ID="btn_ritorno_sistema" runat="server" OnClick="btn_ritorno_sistema_Click">
                                            <span class="fa fa-chevron-left"></span>
                                            <asp:Literal ID="ltl_sistema" runat="server"></asp:Literal>
                                        </asp:LinkButton>
                                    </li>
                                    <asp:Repeater ID="rpt_sottosistemi" runat="server" OnItemCommand="rpt_sottosistemi_ItemCommand"
                                            OnItemDataBound="rpt_sottosistemi_ItemDataBound">
                                        <ItemTemplate>
                                            <li class="" id="li_sottosistema" runat="server">
                                                <asp:LinkButton ID="btn_sottosistema" runat="server" CommandName="SOTTOSISTEMA">
                                                    <i class="" id="i_icona_sottosistema" runat="server">&nbsp;</i>
                                                    <asp:Literal ID="ltl_sottosistema" runat="server"></asp:Literal>
                                                    <span class="fa fa-chevron-down" id="span_sottosistema" runat="server"></span>
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="btn_verifiche" runat="server" CommandName="VERIFICA" data-toggle="modal" data-target=".bs-example-modal-sm" CssClass="action-link">
                                                    <span class="icon icon-impostazioni"></span>
                                                </asp:LinkButton>
                                            </li>
                                            <li class="feature-container" id="li_voci" runat="server">
                                                <div class="feature">
                                                    <asp:Repeater ID="rpt_voci" runat="server" OnItemCommand="rpt_voci_ItemCommand"
                                                            OnItemDataBound="rpt_voci_ItemDataBound">
                                                        <ItemTemplate>
                                                            <div class="row row-eq-height no-gutters">
                                                                <div class="col-xs-7 description">
                                                                    <h6 class="title">
                                                                        <asp:Literal ID="ltl_vo_titolo" runat="server"></asp:Literal>
                                                                    </h6>
                                                                    <p class="info">
                                                                        <asp:Literal ID="ltl_vo_descrizione" runat="server"></asp:Literal>
                                                                    </p>
                                                                </div>
                                                                <div class="col-xs-4 quote">
                                                                    <div>
                                                                        Q.t&agrave; 
                                                                        <asp:Literal ID="ltl_vo_unita_misura" runat="server"></asp:Literal>
                                                                        <br /><br />
                                                                        <asp:TextBox ID="txt_quantita" runat="server" type="number" min="1" max="50" step="1" value="1" ></asp:TextBox>
                                                                        <!--input id="intNumberStep3" required="true" /-->
                                                                    </div>
                                                                </div>
                                                                <div class="col-xs-1 quote">
                                                                    <asp:LinkButton ID="btn_add" runat="server" CommandName="ADD">
                                                                        <span class="fa fa-plus"></span>
                                                                    </asp:LinkButton>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:Repeater> 
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- fine lista catalogo -->
                <!-- visione contenuti tab  LATO DX-->
                <div class="col-md-6 col-xl-8 colonnaDX">
                    <nav class="project-navbar otherOneOverflowDX">
                        <div class="col-sm-6 active" id="div_btn_progetto" runat="server">
                            <asp:LinkButton ID="btn_progetto" runat="server" CssClass="project-navbar-voice"
                                OnClick="btn_progetto_Click">
                                <span class="icon icon-progetto"></span> Progetto
                            </asp:LinkButton>
                        </div>
                        <div class="col-sm-6" id="div_btn_capitolato" runat="server">
                            <asp:LinkButton ID="btn_capitolato" runat="server" CssClass="project-navbar-voice"
                                OnClick="btn_capitolato_Click">
                                Capitolato <span class="icon icon-capitolato">\
                            </asp:LinkButton>
                        </div>
                    </nav>
                    <div id="div_progetto" runat="server">
                        <div class="cat-content overflowContainerDX">
                            <div class="project">
                                <div class="feature">
                                    <asp:Repeater ID="rpt_cantiere_offerta" runat="server" OnItemCommand="rpt_cantiere_offerta_ItemCommand"
                                            OnItemDataBound="rpt_cantiere_offerta_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="row row-eq-height no-gutters">
                                                <div class="col-xs-8 col-xl-9 description">
                                                    <h6 class="title">
                                                        <asp:Literal ID="ltl_co_titolo" runat="server"></asp:Literal>
                                                    </h6>
                                                    <p class="info">
                                                        <asp:Literal ID="ltl_co_descrizione" runat="server"></asp:Literal>
                                                    </p>
                                                </div>
                                                <div class="col-xs-3 col-xl-2 quote">
                                                    <div>
                                                        Q.t&agrave; 
                                                        <asp:Literal ID="ltl_co_unita_misura" runat="server"></asp:Literal>
                                                        <br /><br />
                                                        <asp:TextBox ID="txt_quantita" runat="server" type="number" min="1" max="50" step="1" value="1" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-xs-1 col-xl-1 op">
                                                    <asp:LinkButton ID="btn_del" runat="server" CommandName="DEL">
                                                        <span class="fa fa-trash"></span>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton ID="btn_cap" runat="server" CommandName="CAP">
                                                        <span class="fa fa-edit"></span>
                                                    </asp:LinkButton>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater> 
                                </div>
                            </div>
                        </div>
                        <div class="btn-group btn-group-justified otherOneOverflowLastDX">
                            <asp:LinkButton ID="btn_salva" runat="server" CssClass="btn btn-primary with-icon" OnClick="btn_salva_Click">
                                <span class="icon icon-salva"></span>Salva
                            </asp:LinkButton>
                            <asp:LinkButton ID="btn_annulla" runat="server" CssClass="btn btn-primary with-icon" OnClick="btn_annulla_Click">
                                <span class="icon icon-annulla"></span>Annulla
                            </asp:LinkButton>
                            <a href="#" class="btn btn-primary with-icon"><span class="icon icon-anteprima">
                                </span>Anteprima</a> <a href="#" class="btn btn-primary with-icon"><span class="icon icon-riepilogo">
                                </span>Riepilogo prezzi</a>
                        </div>
                    </div>
                    <div id="div_capitolato" runat="server" visible="false">
                        <div class="cat-content overflowContainerDX">
                            <div class="project">
                                <div class="feature">
                                    <asp:Literal ID="ltl_capitolato" runat="server"></asp:Literal>
                                    <div class="summernote" id="summernote_1" runat="server">
                                    </div>
                                    <div class="input-group">
                                        <div>
                                            <asp:TextBox ID="txt_nw_descrizione" Style="display: none;" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-group btn-group-justified otherOneOverflowLastDX">
                            <asp:LinkButton ID="btn_salva_capitolato" runat="server" CssClass="btn btn-primary with-icon" OnClick="btn_salva_capitolato_Click"
                                OnClientClick="saveSummerNote();">
                                <span class="icon icon-salva"></span>Salva
                            </asp:LinkButton>
                            <asp:LinkButton ID="btn_annulla_capitolato" runat="server" CssClass="btn btn-primary with-icon" OnClick="btn_annulla_capitolato_Click">
                                <span class="icon icon-annulla"></span>Annulla
                            </asp:LinkButton>
                        </div>
                    </div> 
                </div>
                <!-- fine visione contenuti tab -->
            </div>
            <!-- fine corpo -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="script" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript" src="plugins/bootstrap-summernote/summernote.js"></script>
    <script type="text/javascript" src="plugins/bootstrap-summernote/lang/summernote-it-IT.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            setSummerNote(true);
        });

        function setSummerNote(init) {
            $('#<%=summernote_1.ClientID %>').summernote({
                height: 350,
                lang: 'it-IT'
            });
            if (!init) {
                $("#<%=summernote_1.ClientID %>").summernote('code', $("#<%=txt_nw_descrizione.ClientID %>").val());
            }
        }

        function saveSummerNote() {
            $("#<%=txt_nw_descrizione.ClientID %>").val($("#<%=summernote_1.ClientID %>").summernote('code'));
        }


    </script>
</asp:Content>
