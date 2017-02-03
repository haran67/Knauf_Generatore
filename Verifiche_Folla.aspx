<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Verifiche_Folla.aspx.cs" Inherits="Generatore_Web.Verifiche_Folla" %>

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
                        <div class="col-sm-3">
                            <a href="verifiche_sisma.aspx" class="project-navbar-voice">Sisma</a>
                        </div>
                        <div class="col-sm-3 active">
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
                                    <td colspan="3">
                                        <h4>
                                            Sovraccarico di esercizio</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_A1" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_A1.ClientID%>">
                                                <strong>A</strong> - Ambienti ad uso residenziale; sono compresi in questa categoria
                                                i colaci di abitazione e relativi servizi. gli alberghi (ad esclusione delle aree
                                                suscettibili di affolalmento).
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft cat-title">
                                        <strong>B</strong> - Uffici
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_B1" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_B1.ClientID%>">
                                                Cat. <strong>B1</strong> Uffici non aperti al pubblico.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_B2" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_B2.ClientID%>">
                                                Cat. <strong>B2</strong> Uffici aperti al pubblico.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft cat-title">
                                        <strong>C</strong> - Ambienti suscettibili di affollamento
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_C1" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_C1.ClientID%>">
                                                Cat. <strong>C1</strong> Ospedali, ristoranti, caff&egrave; banche, scuole.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_C2" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_C2.ClientID%>">
                                                Cat. <strong>C2</strong> Balconi, ballatoi e scale comuni, sale convegni, cinema,
                                                teatri, chiese, tribune con posti fissi.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_C3" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_C3.ClientID%>">
                                                Cat. <strong>C3</strong> Ambienti privi di ostacoli per libero movimento delle persone,
                                                quali musei, sale per esposizioni, stazioni feroviarie, sale da ballo, palestre,
                                                tribune libere, edifici per eventi pubblici, sale da concerto, palazzetti per lo
                                                sport e relative tribune.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft cat-title">
                                        <strong>D</strong> - Ambienti ad uso commerciale
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_D1" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_D1.ClientID%>">
                                                Cat. <strong>D1</strong> Negozi.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_D2" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_D2.ClientID%>">
                                                Cat. <strong>D2</strong> Centri commerciali, mercati, grandi magazzini, librerie...
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft cat-title">
                                        <strong>E</strong> - Biblioteche, archivi, magazzini ad uso industriale.
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_E1" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_E1.ClientID%>">
                                                Cat. <strong>E1</strong> Biblioteche, archivi, magazzini, depositi, laboratori manifatturieri.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_E2" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_E2.ClientID%>">
                                                Cat. <strong>E2</strong> Ambienti ad uso industriale, da valutarsi caso per caso.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft cat-title">
                                        <strong>F</strong> - Rimesse e parcheggi.
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_F1" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_F1.ClientID%>">
                                                Cat. <strong>F1</strong> Rimesse e parcheggi per il transito di automezzi di peso
                                                a pieno carico fino a 30 kN.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft cat-title">
                                        <strong>G</strong> - Rimesse e parcheggi.
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_G1" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_G1.ClientID%>">
                                                Cat. <strong>G1</strong> Rimesse e parcheggi per il transito di automezzi di peso
                                                a pieno carico superiore a 30 kN, da valutare caso per caso.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft cat-title">
                                        <strong>H</strong> - Coperture e sottotetti.
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="tleft">
                                        <div class="radio radio-verifiche">
                                            <asp:RadioButton ID="rdb_cv_folla_sovraccarico_H1" runat="server" GroupName="rdb_cv_folla_sovraccarico"
                                                OnCheckedChanged="rdb_cv_folla_sovraccarico_changed" AutoPostBack="true" />
                                            <label for="<%=rdb_cv_folla_sovraccarico_H1.ClientID%>">
                                                Cat. <strong>H1</strong> Coperture e sottotetti accessibili per sola manutenzione.
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-feature">
                                <tr>
                                    <td colspan="2">
                                        <h4>
                                            Eventuali ulteriori carichi</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td class="tright">
                                                    Permanenti portati Qk [kN]
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_folla_carichi_permanenti" runat="server" Text="0,000" CssClass="discrete"
                                                        OnTextChanged="txt_cv_folla_carichi_permanenti_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Altezza del punto di applicazione di Qk [m]
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_folla_altezza" runat="server" Text="0,000" CssClass="discrete"
                                                        OnTextChanged="txt_cv_folla_altezza_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Carico distribuito linearmente qk [kN/m]
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_folla_carico_distribuito" runat="server" Text="0,000" CssClass="discrete" Costruzione="H"
                                                        OnTextChanged="txt_cv_folla_carico_distribuito_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tright">
                                                    Altezza della retta di applicazione di qk [m]
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txt_cv_folla_altezza_retta" runat="server" Text="0,000" CssClass="discrete" Costruzione="H"
                                                        OnTextChanged="txt_cv_folla_altezza_retta_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tab-note" colspan="3">
                                        Nota: Se oltre al sovraccarico di esercizio della tabella sopra riportata non sono
                                        presenti altri carichi occorre inserire "0" nelle celle di "Qk" e "qk".
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
                            <a href="verifiche_parete.aspx" class="project-navbar-voice active">prosegui</a>
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
                                        Sovraccarico orizzontale lineare Hk [kN/m] =
                                        <asp:TextBox ID="txt_sovraccarico_orizzontale" runat="server" Text="0,000" CssClass="discrete"
                                            ReadOnly="true"></asp:TextBox>
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
