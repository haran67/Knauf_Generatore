<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Scelta_Controparete.aspx.cs" Inherits="Generatore_Web.Scelta_Controparete" %>

<%@ Register TagPrefix="cc" Namespace="Generatore_Classi.Controls" Assembly="Generatore_Classi" %>
<%@ Register src="Verifiche_Opzioni.ascx" tagname="Verifiche_Opzioni" tagprefix="uc1" %>
<%@ Register src="Scelta_Voci.ascx" tagname="Scelta_Voci" tagprefix="uc1" %>

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
                            <a href="#" class="project-navbar-voice">contropareti</a>
                        </div>
                    </nav>
                    <div class="row no-gutters sub-content-container overflowContainerSX">
                        <div class="sub-content">
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td colspan="2">
                                        <h4>Tipo di controparete</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        W625
                                    </td>
                                    <td>
                                        W623
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <asp:RadioButton ID="rdb_cv_parete_01"  runat="server" GroupName="rdb_cv_parete" AutoPostBack="true"
                                                OnCheckedChanged="rdb_parete_changed" AccessKey="1" />
                                            <label for="<%=rdb_cv_parete_01.ClientID%>">
                                                <img src="images/controparete-w625.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <asp:RadioButton ID="rdb_cv_parete_02" runat="server" GroupName="rdb_cv_parete"  AutoPostBack="true"
                                                OnCheckedChanged="rdb_parete_changed" AccessKey="2" />
                                            <label for="<%=rdb_cv_parete_02.ClientID%>">
                                                <img src="images/controparete-w623.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        W628
                                    </td>
                                    <td>
                                        W624
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <asp:RadioButton ID="rdb_cv_parete_03" runat="server" GroupName="rdb_cv_parete" AutoPostBack="true"
                                                OnCheckedChanged="rdb_parete_changed" AccessKey="3" />
                                            <label for="<%=rdb_cv_parete_03.ClientID%>">
                                                <img src="images/controparete-w628.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <asp:RadioButton ID="rdb_cv_parete_04" runat="server" GroupName="rdb_cv_parete"  AutoPostBack="true"
                                                OnCheckedChanged="rdb_parete_changed" AccessKey="4" />
                                            <label for="<%=rdb_cv_parete_04.ClientID%>">
                                                <img src="images/controparete-w624.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        W626 e K251
                                    </td>
                                    <td>
                                        W611
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <asp:RadioButton ID="rdb_cv_parete_05" runat="server" GroupName="rdb_cv_parete" AutoPostBack="true"
                                                OnCheckedChanged="rdb_parete_changed" AccessKey="5" />
                                            <label for="<%=rdb_cv_parete_05.ClientID%>">
                                                <img src="images/controparete-w626-k251.jpg" />
                                            </label>
                                        </div>
                                    </td>
                                    <td class="tab-images">
                                        <div class="radio radio-verifiche radio-image">
                                            <asp:RadioButton ID="rdb_cv_parete_06" runat="server" GroupName="rdb_cv_parete"  AutoPostBack="true"
                                                OnCheckedChanged="rdb_parete_changed" AccessKey="6" />
                                            <label for="<%=rdb_cv_parete_06.ClientID%>">
                                                <img src="images/controparete-w611.jpg" />
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
                    <nav class="project-navbar otherOneOverflowDX hidden">
                        <div class="col-sm-12 col-md-4 col-lg-4 active">
                            <asp:LinkButton ID="btn_progetto" runat="server" CssClass="project-navbar-voice active"
                                OnClick="btn_progetto_Click">
                                Prosegui
                            </asp:LinkButton>
                        </div>
                    </nav>
                    <div class="cat-content overflowContainerDX">
                        <div class="project">
                            <uc1:Scelta_Voci ID="Scelta_Voci" runat="server" />
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
