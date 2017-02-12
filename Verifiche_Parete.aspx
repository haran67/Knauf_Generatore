<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Verifiche_Parete.aspx.cs" Inherits="Generatore_Web.Verifiche_Parete" %>

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
                        <div class="col-sm-3">
                            <a href="verifiche_vento.aspx" class="project-navbar-voice">Vento</a>
                        </div>
                        <div class="col-sm-3">
                            <a href="verifiche_sisma.aspx" class="project-navbar-voice">Sisma</a>
                        </div>
                        <div class="col-sm-3">
                            <a href="verifiche_folla.aspx" class="project-navbar-voice">Folla</a>
                        </div>
                        <div class="col-sm-3 active">
                            <a href="verifiche_parete.aspx" class="project-navbar-voice">Parete</a>
                        </div>
                    </nav>
                    <div class="row no-gutters sub-content-container overflowContainerSX">
                        <div class="sub-content">
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td>
                                        <h4>
                                            PARETE</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="table-feature">
                                            <tr>
                                                <td class="tright">
                                                    Altezza della parete [m]
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_cv_parete_altezza" runat="server" Text="0,000" CssClass="discrete"
                                                        OnTextChanged="txt_cv_parete_altezza_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Interasse dei profili [m]
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_cv_parete_interasse" runat="server" Text="0,000" CssClass="discrete"
                                                        OnTextChanged="txt_cv_parete_interasse_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Posizione della parete
                                                </td>
                                                <td class="tleft">
                                                    <asp:DropDownList ID="ddl_cv_parete_posizione" runat="server" OnSelectedIndexChanged="ddl_cv_parete_posizione_SelectedIndexChanged" AutoPostBack="true">
                                                        <asp:ListItem Text="Interna alla costruzione" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="Perimetrale" Value="2"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Identificativo parete
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_parete_identificativo" runat="server" Text="" MaxLength="128"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Nome parete in progetto
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_parete_nome" runat="server" Text="" MaxLength="256"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Note
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_parete_note" runat="server" Text="" TextMode="MultiLine" Rows="4"></asp:TextBox>
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
                                <tr>
                                    <td class="tab-note" colspan="3">
                                        Nota: nel caso di parete interna alla costruzione &egrave; indifferente a quale
                                        lato della parete si attribuisce il nome "Faccia A" ed a quale il nome "Faccia B".
                                        Nel caso di parete perimetrale, la "Faccia A" deve essere identificata con il lato
                                        della aprete esterna all'edificio.
                                    </td>
                                </tr>
                                <td colspan="3">
                                    <h4>
                                        Indicazione lastre</h4>
                                </td>
                                </tr>
                                <tr>
                                    <td class="tab-images" colspan="3">
                                        <img src="images/indicazioni-lastre.jpg" />
                                    </td>
                                </tr>
                                <td colspan="3">
                                    <h4>
                                        Profili metallici</h4>
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
                                <td colspan="3">
                                    <h4>
                                        Isolante</h4>
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
                    <div class="otherOneOverflowDX">
                        <nav class="project-navbar ">
                            <div class="col-sm-6 col-md-4 col-lg-4">
                                <asp:LinkButton ID="btn_progetto" runat="server" CssClass="project-navbar-voice active"
                                    OnClick="btn_progetto_Click">
                                    Prosegui
                                </asp:LinkButton>
                            </div>
                            <div class="col-sm-6 col-md-8 col-lg-8 active impostazioni yamm">
                                <uc1:Verifiche_Opzioni ID="Verifiche_Opzioni1" runat="server" />
                            </div>
                        </nav>
                        <div class="semafori-verifiche" id="div_semafori" runat="server">
                            <div class="row no-gutters">
                                <div class="col-sm-3">
                                    <span class="semaforo" id="span_verifica_completo" runat="server">COMPLETO</span>
                                </div>
                                <div class="col-sm-3">
                                    <span class="semaforo" id="span_verifica_slu" runat="server">SLU</span>
                                </div>
                                <div class="col-sm-3">
                                    <span class="semaforo" id="span_verifica_sls_sld" runat="server">SLS-SLD</span>
                                </div>
                                <div class="col-sm-3">
                                    <span class="semaforo last" id="span_verifica_slv" runat="server">SLV</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cat-content overflowContainerDX" id="div_risultati" runat="server">
                        <div class="feature-editor">
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td colspan="8">
                                        <h4>
                                            Verifiche di resistenza e stabilit&agrave;</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" class="tleft">
                                        <h5>
                                            Faccia compressa</h5>
                                    </td>
                                    <td colspan="2">
                                        <h5>
                                            SLU</h5>
                                    </td>
                                    <td colspan="2">
                                        <h5>
                                            SLV</h5>
                                    </td>
                                </tr>
                                <tr class="feature-setting">
                                    <td colspan="4">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <h5>
                                            A</h5>
                                    </td>
                                    <td>
                                        <h5>
                                            B</h5>
                                    </td>
                                    <td>
                                        <h5>
                                            A</h5>
                                    </td>
                                    <td>
                                        <h5>
                                            B</h5>
                                    </td>
                                </tr>
                                <tr class="feature-setting">
                                    <td colspan="4" class="tright">
                                        Snellezza sezione lorda (faccia compressa) &lambda; check &lambda; < 150 &lambda;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_snellezza_sezione_lorda_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_snellezza_sezione_lorda_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_snellezza_sezione_lorda_slv_A" runat="server" Text="0,000" ReadOnly="true" Visible="false"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_snellezza_sezione_lorda_slv_B" runat="server" Text="0,000" ReadOnly="true" Visible="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group tleft">
                                    <td colspan="4">
                                        1) Verifiche sezione composta
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group tleft">
                                    <td colspan="4">
                                        1.1) Profilati metallici
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        MSd [Nmm]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_msd_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_msd_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_msd_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_msd_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        NSd [N]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_nsd_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_nsd_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_nsd_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_nsd_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        VSd [N]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_vsd_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_vsd_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_vsd_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_vsd_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group tright">
                                    <td colspan="4">
                                        Sollecitazioni resistenti
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        MRd [Nmm]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_mrd_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_mrd_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_mrd_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_mrd_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        NRd [N]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_nrd_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_nrd_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_nrd_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_nrd_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting">
                                    <!-- l'ultimo non ha la classe feature-group perchè al prossimo tr si rinizializza la classe stessa -->
                                    <td colspan="4" class="tright">
                                        VRd [N]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_vrd_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_vrd_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_vrd_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_vrd_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group tright">
                                    <td colspan="4">
                                        ratio Sollecitazioni/Resistenza
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        Resistenza professionale
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_rp_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_rp_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_rp_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_rp_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        Resistenza taglio
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_rt_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_rt_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_rt_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_rt_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting">
                                    <!-- l'ultimo non ha la classe feature-group perchè al prossimo tr si rinizializza la classe stessa -->
                                    <td colspan="4" class="tright">
                                        Instabilità professione
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_ip_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_ip_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_ip_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_profilati_metallici_ip_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr class="feature-setting feature-group tleft">
                                    <td colspan="4">
                                        1.2) Laste in gesso
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        Tensione lastra interna [N/mmq]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tli_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tli_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tli_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tli_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        ratio
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlir_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlir_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlir_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlir_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        Tensione lastra media [N/mmq]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlm_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlm_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlm_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlm_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting">
                                    <!-- l'ultimo non ha la classe feature-group perchè al prossimo tr si rinizializza la classe stessa -->
                                    <td colspan="4" class="tright">
                                        ratio
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlmr_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlmr_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlmr_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_lastra_gesso_tlmr_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr class="feature-setting feature-group tleft">
                                    <td colspan="4">
                                        2) Verifica locale lastre
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        Tensione lastra interna [N/mmq]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tli_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tli_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tli_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tli_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        ratio
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlir_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlir_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlir_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlir_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td colspan="4" class="tright">
                                        Tensione lastra media [N/mmq]
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlm_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlm_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlm_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlm_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting">
                                    <!-- l'ultimo non ha la classe feature-group perchè al prossimo tr si rinizializza la classe stessa -->
                                    <td colspan="4" class="tright">
                                        ratio
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlmr_slu_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlmr_slu_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlmr_slv_A" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_verifica_locale_tlmr_slv_B" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <div class="row no-gutters gap">
                            <div class="col-sm-6">
                                <div class="feature-editor">
                                    <table class="table table-feature equal-cell-width">
                                        <tr>
                                            <td colspan="3">
                                                <h4>
                                                    Verifiche di deformit&agrave;</h4>
                                            </td>
                                        </tr>
                                        <tr class="feature-setting feature-group">
                                            <td class="tright">
                                                
                                            </td>
                                            <td>
                                                SLS
                                            </td>
                                            <td>
                                                SLD
                                            </td>
                                        </tr>
                                        <tr class="feature-setting feature-group">
                                            <td class="tright">
                                                Freccia [mm]
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_deformita_sls_freccia" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_deformita_sld_freccia" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="feature-setting feature-group">
                                            <td class="tright">
                                                Rapporto H/f
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_deformita_sls_rapporto" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_deformita_sld_rapporto" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="feature-editor">
                                    <table class="table table-feature equal-cell-width">
                                        <tr>
                                            <td colspan="3">
                                                <h4>
                                                    Azioni sugli ancoraggi</h4>
                                            </td>
                                        </tr>
                                        <tr class="feature-setting feature-group">
                                            <td colspan="2" class="tright">
                                                Taglio massimo sull'ancoraggio sup. [N]
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_ancoraggio_sup" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="feature-setting feature-group">
                                            <td colspan="2" class="tright">
                                                Taglio massimo sull'ancoraggio inf. [N]
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_ancoraggio_inf" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="feature-setting ">
                                            <td colspan="2" class="tright">
                                                Azione assiale sull'ancoraggio. [N]
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_ancoraggio_assiale" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="feature-setting feature-group">
                                            <td colspan="2" class="tright">
                                                Taglio massimo sull'ancoraggio sup. [N/m]
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_ancoraggio_sup_m" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="feature-setting feature-group">
                                            <td colspan="2" class="tright">
                                                Taglio massimo sull'ancoraggio inf. [N/m]
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_ancoraggio_inf_m" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="feature-setting ">
                                            <td colspan="2" class="tright">
                                                Azione assiale sull'ancoraggio. [N/m]
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_ancoraggio_assiale_m" runat="server" Text="0,000" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cat-content overflowContainerDX" id="div_scelta_voci" runat="server" visible="false">
                        <div class="project">
                            <uc1:Scelta_Voci ID="Scelta_Voci" runat="server" />
                        </div>
                    </div>
                </div>
                <!-- fine visione contenuti tab -->
            </div>
            <!-- fine corpo -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
