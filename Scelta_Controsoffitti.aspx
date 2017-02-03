<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Scelta_Controsoffitti.aspx.cs" Inherits="Generatore_Web.Scelta_Controsoffitti" %>

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
                        <div class="col-sm-12 active">
                            <a href="#" class="project-navbar-voice">parete</a>
                        </div>
                    </nav>
                    <div class="row no-gutters sub-content-container overflowContainerSX">
                        <div class="sub-content">
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td colspan="2">
                                        <h4>Tipo di controsoffitto</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        D114
                                    </td>
                                    <td>
                                        D113
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <input type="radio" name="tipo-parete" id="radio1" value="option2">
                                            <label for="radio1">
                                                <img src="images/controsoffitto-d114.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <input type="radio" name="tipo-parete" id="radio2" value="option2">
                                            <label for="radio2">
                                                <img src="images/controsoffitto-d113.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        D112
                                    </td>
                                    <td>
                                        D111
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <input type="radio" name="tipo-parete" id="radio3" value="option2">
                                            <label for="radio3">
                                                <img src="images/controsoffitto-d112.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <input type="radio" name="tipo-parete" id="radio4" value="option2">
                                            <label for="radio4">
                                                <img src="images/controsoffitto-d111.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td colspan="3">
                                        <h4>
                                            Caratteristiche facce</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <h5>
                                            faccia "A"</h5>
                                    </td>
                                    <td>
                                        <h5>
                                            faccia "B"</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    1a lastra
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Spessore
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra1_facciaA" runat="server" Lastra="1" Faccia="A" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra1_facciaA_spessore" runat="server" Lastra="1" Faccia="A" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_spessore_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra1_facciaB" runat="server" Lastra="1" Faccia="B" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra1_facciaB_spessore" runat="server" Lastra="1" Faccia="B" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_spessore_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    2a lastra
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Spessore
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra2_facciaA" runat="server" Lastra="2" Faccia="A" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra2_facciaA_spessore" runat="server" Lastra="2" Faccia="A" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_spessore_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra2_facciaB" runat="server" Lastra="2" Faccia="B" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra2_facciaB_spessore" runat="server" Lastra="2" Faccia="B" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_spessore_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    3a lastra
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Spessore
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra3_facciaA" runat="server" Lastra="3" Faccia="A" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra3_facciaA_spessore" runat="server" Lastra="3" Faccia="A" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_spessore_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra3_facciaB" runat="server" Lastra="3" Faccia="B" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_lastra3_facciaB_spessore" runat="server" Lastra="3" Faccia="B" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_lastra_faccia_spessore_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td>
                                        <h4>Profili metallici</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    Tipologia
                                                </td>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_profilo_cod" runat="server" Campo="P" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_profilo_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Interasse
                                                </td>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_profilo_interasse" runat="server"  Campo="I" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_profilo_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Spessore
                                                </td>
                                                <td class="tright">
                                                    <asp:DropDownList ID="ddl_cv_parete_profilo_spessore" runat="server"  Campo="S" 
                                                        OnSelectedIndexChanged="ddl_cv_parete_profilo_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td colspan="3">
                                        <h4>Isolante</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <table>
                                            <tr>
                                                <td class="tcenter">
                                                    Tipologia<br />
                                                    <asp:DropDownList ID="ddl_cv_parete_isolante_cod" runat="server"  Campo="P"
                                                        OnSelectedIndexChanged="ddl_cv_parete_isolante_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="tcenter">
                                                    Densita
                                                    <asp:DropDownList ID="ddl_cv_parete_isolante_densita" runat="server"  Campo="D"
                                                        OnSelectedIndexChanged="ddl_cv_parete_isolante_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="tcenter">
                                                    Spessore
                                                    <asp:DropDownList ID="ddl_cv_parete_isolante_spessore" runat="server"  Campo="S"
                                                        OnSelectedIndexChanged="ddl_cv_parete_isolante_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
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
                        <div class="col-sm-12 col-md-4 col-lg-4 active">
                            <asp:LinkButton ID="btn_progetto" runat="server" CssClass="project-navbar-voice active"
                                OnClick="btn_progetto_Click">
                                Prosegui
                            </asp:LinkButton>
                        </div>
                    </nav>
                    <div class="cat-content overflowContainerDX">
                        <div class="project">

                        </div>
                    </div>
                    <div class="btn-group btn-group-justified otherOneOverflowLastDX">

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
