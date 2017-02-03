<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Verifiche_Vento.aspx.cs" Inherits="Generatore_Web.Verifiche_Vento" %>

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
                        <div class="col-sm-3 active">
                            <a href="verifiche_vento.aspx" class="project-navbar-voice">Vento</a>
                        </div>
                        <div class="col-sm-3">
                            <a href="verifiche_sisma.aspx" class="project-navbar-voice">Sisma</a>
                        </div>
                        <div class="col-sm-3">
                            <a href="verifiche_folla.aspx" class="project-navbar-voice">Folla</a>
                        </div>
                        <div class="col-sm-3">
                            <a href="verifiche_parete.aspx" class="project-navbar-voice">Parete</a>
                        </div>
                    </nav>
                    <!-- <h3 class="cat-list-title otherOneOverflowSX">Catalogo</h3> -->
                    <div class="row no-gutters sub-content-container overflowContainerSX">
                        <div class="sub-content">
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td>
                                        <h4>
                                            Individuazione geografica della localit&Agrave;</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    Distanza dalla costa, D [km]
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_cv_vento_distanza_costa" runat="server" Text="0,000" CssClass="discrete"
                                                       OnTextChanged="txt_cv_vento_distanza_costa_TextChanged" AutoPostBack="true" ></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Altitudine sul livello del mare, as [m]
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_cv_vento_altitudine" runat="server" Text="0,000" CssClass="discrete"
                                                       OnTextChanged="txt_cv_vento_altitudine_TextChanged" AutoPostBack="true" ></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="ddl_regione" runat="server" OnSelectedIndexChanged="ddl_regione_SelectedIndexChanged" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-images">
                                        <img src="images/mappa-italia.jpg" />
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td>
                                        <h4>
                                            Condizioni orografiche del sito</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tleft">
                                                    <div class="radio radio-verifiche">
                                                        <asp:RadioButton ID="rdb_orografia_1" runat="server" GroupName="condizioni-orografiche" 
                                                             OnCheckedChanged="rdb_orografia_changed" AutoPostBack="true" />
                                                        <label for="<%=rdb_orografia_1.ClientID%>">
                                                            Orografia pianeggiante (ct=1)
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tleft">
                                                    <div class="radio radio-verifiche">
                                                        <asp:RadioButton ID="rdb_orografia_2" runat="server" GroupName="condizioni-orografiche" 
                                                             OnCheckedChanged="rdb_orografia_changed" AutoPostBack="true" />
                                                        <label for="<%=rdb_orografia_2.ClientID%>">
                                                            Sommit&agrave; di pendii isolati
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tleft">
                                                    <div class="radio radio-verifiche">
                                                        <asp:RadioButton ID="rdb_orografia_3" runat="server" GroupName="condizioni-orografiche" 
                                                             OnCheckedChanged="rdb_orografia_changed" AutoPostBack="true" />
                                                        <label for="<%=rdb_orografia_3.ClientID%>">
                                                            Fronte esposto al vendo di pendii o colline
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-images">
                                        <img src="images/condizioni-orografiche.jpg" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    H [m] =
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_orografica_h" runat="server" Text="0,000" CssClass="discrete"
                                                       Orografia="H" OnTextChanged="txt_orografica_TextChanged" AutoPostBack="true" ></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Lu [m] =
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_orografica_lu" runat="server" Text="0,000" CssClass="discrete"
                                                       Orografia="LU" OnTextChanged="txt_orografica_TextChanged" AutoPostBack="true" ></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    x [m] =
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_orografica_x" runat="server" Text="0,000" CssClass="discrete"
                                                       Orografia="X" OnTextChanged="txt_orografica_TextChanged" AutoPostBack="true" ></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-note">
                                        Questi tre valori intervengono solo in caso di scelta di opzione diversa da "orografia
                                        pianeggiante".
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature">
                                <tr>
                                    <td>
                                        <h4>
                                            Condizioni orografiche del sito</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr class="tleft">
                                                <td class="tmiddle">
                                                    <asp:LinkButton ID="btn_orografiche_a" runat="server" CssClass="btn-square" CommandArgument="A"
                                                        OnClick="btn_orografiche_Click">
                                                        <img src="images/condizioni-orografiche-a.jpg" />
                                                        <span>A</span>
                                                    </asp:LinkButton>
                                                </td>
                                                <td class="tmiddle">
                                                    Aree urbane in cui almeno il 15% della superficie sia coperto da edifici la cui
                                                    altezza media superi i 15m.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr class="tleft">
                                                <td class="tmiddle">
                                                    <asp:LinkButton ID="btn_orografiche_b" runat="server" CssClass="btn-square" CommandArgument="B"
                                                        OnClick="btn_orografiche_Click">
                                                        <img src="images/condizioni-orografiche-b.jpg" />
                                                        <span>B</span>
                                                    </asp:LinkButton>
                                                </td>
                                                <td class="tmiddle">
                                                    Aree urbane (non di classe A), suburbane, industriali e boschive.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr class="tleft">
                                                <td class="tmiddle">
                                                    <asp:LinkButton ID="btn_orografiche_c" runat="server" CssClass="btn-square" CommandArgument="C"
                                                        OnClick="btn_orografiche_Click">
                                                        <img src="images/condizioni-orografiche-c.jpg" />
                                                        <span>C</span>
                                                    </asp:LinkButton>
                                                </td>
                                                <td class="tmiddle">
                                                    Aree con ostacoli diffusi (alberi, case, muri, recinzioni,...); aree con rugosità
                                                    non riconducibili alle clasi A, B, C.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr class="tleft">
                                                <td class="tmiddle">
                                                    <asp:LinkButton ID="btn_orografiche_d" runat="server" CssClass="btn-square" CommandArgument="D"
                                                        OnClick="btn_orografiche_Click">
                                                        <img src="images/condizioni-orografiche-d.jpg" />
                                                        <span>D</span>
                                                    </asp:LinkButton>
                                                </td>
                                                <td class="tmiddle">
                                                    Aree prive di ostacoli (aperta campagna, aeroporti, aree agricole, pascoli, zone
                                                    paludose o sabbiose, superfici innevate o ghiacciate, mase, lagni,...).
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature equal-cell-width">
                                <tr>
                                    <td>
                                        <h4>
                                            Caratteristiche della costruzione</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    Altezza, z [m]
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_altezza" runat="server" Text="0,000" CssClass="discrete"
                                                       Costruzione="H" OnTextChanged="txt_costruzione_TextChanged" AutoPostBack="true" ></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Coefficiente dinamico, Cd [m]
                                                </td>
                                                <td class="tleft">
                                                    <asp:TextBox ID="txt_cd" runat="server" Text="0,000" CssClass="discrete"
                                                       Costruzione="CD" OnTextChanged="txt_costruzione_TextChanged" AutoPostBack="true" ></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tleft">
                                        <h5>
                                            Permeabilit&agrave;</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_permeabilita_1" runat="server" GroupName="caratteristiche-costruzione" 
                                                OnCheckedChanged="rdb_costruzione_changed" AutoPostBack="true"  />
                                            <label for="<%=rdb_permeabilita_1.ClientID%>">
                                                Costruzione stagna.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_permeabilita_2" runat="server" GroupName="caratteristiche-costruzione" 
                                                OnCheckedChanged="rdb_costruzione_changed" AutoPostBack="true"  />
                                            <label for="<%=rdb_permeabilita_2.ClientID%>">
                                                Costruzione con parete con superficie < 1/3 di quella totale.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_permeabilita_3" runat="server" GroupName="caratteristiche-costruzione" 
                                                OnCheckedChanged="rdb_costruzione_changed" AutoPostBack="true"  />
                                            <label for="<%=rdb_permeabilita_3.ClientID%>">
                                                Costruzione con parete con apertura doi superficie > di 1/3 di quella totale.
                                            </label>
                                        </div>
                                    </td>
                                    </table>
                        </div>
                    </div>
                </div>
                <!-- fine lista catalogo -->
                <!-- visione contenuti tab LATO DX -->
                <div class="col-md-6 col-xl-8 colonnaDX">
                    <nav class="project-navbar otherOneOverflowDX">
                        <div class="col-sm-6 col-md-4 col-lg-4">
                            <a href="verifiche_sisma.aspx" class="project-navbar-voice active">prosegui</a>
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
                                        categoria =
                                        <asp:TextBox ID="txt_categoria" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        Kr =
                                        <asp:TextBox ID="txt_kr" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        Z0 =
                                        <asp:TextBox ID="txt_z0" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        Zmin =
                                        <asp:TextBox ID="txt_zmin" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        velocit&agrave; del vento Vref [m/s] =
                                        <asp:TextBox ID="txt_velocita_vento" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        pressione cinetica del vento qref [N/m<sup>2</sup>] =
                                        <asp:TextBox ID="txt_pressione_vento" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        coefficiente di topografia Ct =
                                        <asp:TextBox ID="txt_topografia" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        coefficiente dinamico Cd =
                                        <asp:TextBox ID="txt_coefficente_dinamico" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        coefficiente di esposizione =
                                        <asp:TextBox ID="txt_coefficente_esposizione" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        entit&agrave; dell'azione del vento qref Cd Ce Cpe [N/m<sup>2</sup>] =
                                        <asp:TextBox ID="txt_enita_vento" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        vento in pressione (parete esterna) qref Cd Ce Cpe, pres [N/m<sup>2</sup>] =
                                        <asp:TextBox ID="txt_vento_pressione" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        vento in pressione (parete esterna) qref Cd Ce Cpe, depr [N/m<sup>2</sup>] =
                                        <asp:TextBox ID="txt_vento_depressione" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="feature-setting feature-group">
                                    <td>
                                        azione del vento (parete interna) qref Cd Ce Cpi [N/m<sup>2</sup>] =
                                        <asp:TextBox ID="txt_azione_vento" runat="server" Text="0,000" CssClass="discrete" ReadOnly="true"></asp:TextBox>
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
