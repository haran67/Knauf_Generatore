<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Verifiche_Sisma.aspx.cs" Inherits="Generatore_Web.Verifiche_Sisma" %>

<%@ Register TagPrefix="cc" Namespace="Generatore_Classi.Controls" Assembly="Generatore_Classi" %>
<%@ Register src="Verifiche_Opzioni.ascx" tagname="Verifiche_Opzioni" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel ID="upd_panel" runat="server">
        <ContentTemplate>
            <!-- corpo -->
            <div class="container content parentOverflowContainer">
                <!-- lista catalogo LATO SX -->
                <div class="col-md-6 col-xl-4 colonnaSX">
                    <nav class="project-navbar otherOneOverflowSX">
                        <div class="col-sm-3">
                            <a href="verifiche_vento.aspx" class="project-navbar-voice">Vento</a>
                        </div>
                        <div class="col-sm-3 active">
                            <a href="verifiche_sisma.aspx" class="project-navbar-voice">Sisma</a>
                        </div>
                        <div class="col-sm-3">
                            <a href="verifiche_folla.aspx" class="project-navbar-voice">Folla</a>
                        </div>
                        <div class="col-sm-3">
                            <a href="verifiche_parete.aspx" class="project-navbar-voice">Parete</a>
                        </div>
                    </nav>
                    <div class="row no-gutters sub-content-container overflowContainerSX">
                        <div class="sub-content">
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td colspan="4">
                                        <h4>
                                            Parametri dell spettro di risposta</h4>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="2">
                                        SLV
                                    </td>
                                    <td colspan="2">
                                        SLD
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="2">
                                        <table class="table table-feature equal-cell-width">
                                            <tr>
                                                <td class="tright">
                                                    ag/g =
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_sisma_slv_ag" runat="server" Text="0,000" CssClass="discrete"
                                                        OnTextChanged="txt_cv_sisma_slv_ag_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td colspan="2">
                                        <table class="table table-feature equal-cell-width">
                                            <tr>
                                                <td class="tright">
                                                    ag/g =
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_sisma_sld_ag" runat="server" Text="0,000" CssClass="discrete"
                                                        OnTextChanged="txt_cv_sisma_sld_ag_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="2">
                                        <table class="table table-feature equal-cell-width">
                                            <tr>
                                                <td class="tright">
                                                    S =
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_sisma_slv_s" runat="server" Text="0,000" CssClass="discrete" Costruzione="H"
                                                        OnTextChanged="txt_cv_sisma_slv_s_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td colspan="2">
                                        <table class="table table-feature equal-cell-width">
                                            <tr>
                                                <td class="tright">
                                                    S =
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_sisma_sld_s" runat="server" Text="0,000" CssClass="discrete" Costruzione="H"
                                                        OnTextChanged="txt_cv_sisma_sld_s_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td colspan="3">
                                        <h4>
                                            Parametri "Z", "H", "T1" riguardandi la costruzione in cui inserire la parete</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="text-align: left;">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_sisma_parametri_Z" runat="server" GroupName="rdb_cv_sisma_parametri"
                                                OnCheckedChanged="rdb_cv_sisma_parametri_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_sisma_parametri_Z.ClientID%>">
                                                Z - Quota del baricentro della parete Knauf oggetto del calcolo rispetto al piano
                                                di spicco della fondazione;
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="text-align: left;">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_sisma_parametri_H" runat="server" GroupName="rdb_cv_sisma_parametri"
                                                OnCheckedChanged="rdb_cv_sisma_parametri_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_sisma_parametri_H.ClientID%>">
                                                H - Altezza della costruzione misurata a partire dal piando di spicco della fondazione;
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="text-align: left;">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_sisma_parametri_T" runat="server" GroupName="rdb_cv_sisma_parametri"
                                                OnCheckedChanged="rdb_cv_sisma_parametri_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_sisma_parametri_T.ClientID%>">
                                                T1 - Periodo fondamentale di vibrazione della costruzione nella direzione ortogonale
                                                alla parete Knauf;
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <h5>
                                            Categoria di sottosuolo
                                            <asp:TextBox ID="txt_cv_sisma_sottosuolo" runat="server" Text="" CssClass="discrete" MaxLength="16"
                                                OnTextChanged="txt_cv_sisma_sottosuolo_TextChanged" AutoPostBack="true"></asp:TextBox>
                                        </h5>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature equal-cell-width">
                            <tr>
                                <td>
                                    <h4>
                                        Carichi permanenti portati</h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Permanenti portati [N/m<sup>2</sup>]
                                    <asp:TextBox ID="txt_cv_sisma_carichi_permanenti" runat="server" Text="0,000" CssClass="discrete"
                                        OnTextChanged="txt_cv_sisma_carichi_permanenti_TextChanged" AutoPostBack="true"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <!-- fine lista catalogo -->
            <!-- visione contenuti tab LATO DX -->
            <div class="col-md-6 col-xl-8 colonnaDX">
                <nav class="project-navbar otherOneOverflowDX">
                    <div class="col-sm-6 col-md-4 col-lg-4">
                        <a href="verifiche_folla.aspx" class="project-navbar-voice active">prosegui</a>
                    </div>
                    <div class="col-sm-6 col-md-8 col-lg-8 active impostazioni yamm">
                        <uc1:Verifiche_Opzioni ID="Verifiche_Opzioni1" runat="server" />
                    </div>
                </nav>
                <div class="cat-content overflowContainerDX">
                    <div class="feature-editor">
                        <table class="table table-feature equal-cell-width tright">
                            <tr class="feature-setting feature-group">
                                <td>
                                    Carichi pe runit&agrave; di superficie
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    Peso lastre faccia A [N/m<sup>2</sup>] =
                                    <asp:TextBox ID="txt_peso_lastre_A" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting">
                                <td>
                                    Peso lastre faccia B [N/m<sup>2</sup>] =
                                    <asp:TextBox ID="txt_peso_lastre_B" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    Carichi risultanti
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    Peso profili metallici [Np>] =
                                    <asp:TextBox ID="txt_profili_metallici" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    Peso lastre faccia A [N] =
                                    <asp:TextBox ID="txt_peso_lastre_AN" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    Peso lastre faccia B [N] =
                                    <asp:TextBox ID="txt_peso_lastre_BN" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    parametri portati =
                                    <asp:TextBox ID="txt_parametri_portati" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting">
                                <td>
                                    Peso totale =
                                    <asp:TextBox ID="txt_peso_totale" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    SLV
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    qa =
                                    <asp:TextBox ID="txt_slv_qa" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    Sa =
                                    <asp:TextBox ID="txt_slv_sa" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting">
                                <td>
                                    Azione sismica risultante Fa [N] =
                                    <asp:TextBox ID="txt_azione_slv_fa" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    SLD
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    qa =
                                    <asp:TextBox ID="txt_sld_qa" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    Sa =
                                    <asp:TextBox ID="txt_sld_sa" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting">
                                <td>
                                    Azione sismica risultante Fa [N] =
                                    <asp:TextBox ID="txt_azione_sld_fa" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="feature-setting feature-group">
                                <td>
                                    Periodo fondamentale di vibrazione della parete
                                </td>
                            </tr>
                            <tr class="feature-setting">
                                <td>
                                    Ta [sec] =
                                    <asp:TextBox ID="txt_vibrazione_ta" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
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
</asp:Content>
