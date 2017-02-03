<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Verifiche_Opzioni.ascx.cs"
    Inherits="Generatore_Web.Verifiche_Opzioni" %>
<div class="dropdown yamm-fw">
    <a href="#" class="project-navbar-voice dropdown-toggle" data-toggle="dropdown"><span
        class="fa fa-chevron-down"></span>Impostazioni <span class="fa fa-cog"></span>
    </a>
    <ul class="dropdown-menu">
        <li>
            <div class="yamm-content">
                <table class="table table-feature inverse">
                    <tr>
                        <td>
                            <table class="table-feature inverse">
                                <tr>
                                    <td class="small ttop">
                                        <asp:DropDownList ID="ddl_co_verifica_sismica" runat="server" OnSelectedIndexChanged="ddl_co_verifica_sismica_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="NO" Value="N" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="SI" Value="S"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        A) Effettazione della verifica sismica (vedi nota 1)
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table-feature inverse">
                                <tr>
                                    <td class="small ttop">
                                        <asp:DropDownList ID="ddl_co_azione_vento" runat="server" OnSelectedIndexChanged="ddl_co_azione_vento_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="La parete non è soggetta all'azione del vento" Value="1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="La parete è soggetta all'azione del vento" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        B) Azione del vento
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table-feature inverse">
                                <tr>
                                    <td class="small ttop">
                                        <asp:DropDownList ID="ddl_co_limite_freccia" runat="server" OnSelectedIndexChanged="ddl_co_limite_freccia_SelectedIndexChanged" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        C) Limite accettabile del rapporto "frecce/altezza"
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table-feature inverse">
                                <tr>
                                    <td class="small ttop">
                                        <asp:DropDownList ID="ddl_co_verifica_deformabilita" runat="server" OnSelectedIndexChanged="ddl_co_verifica_deformabilita_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="NO" Value="N" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="SI" Value="S"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        D) Verifica di deformit&agrave; secondo UNI 9154
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table-feature inverse">
                                <tr>
                                    <td class="small ttop">
                                        <asp:DropDownList ID="ddl_co_verifica_freccia_sismica" runat="server" OnSelectedIndexChanged="ddl_co_verifica_freccia_sismica_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="NO" Value="N" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="SI" Value="S"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        E) Verifica della freccia in condizioni sismiche (SLD) (IMPORTANTE: vedi nota 1)
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table-feature inverse">
                                <tr>
                                    <td class="small tcenter">
                                        <i class="fa fa-exclamation-triangle" style="font-size: 100px;"></i>
                                    </td>
                                    <td>
                                        <small><strong>Nota 1</strong>: le l'opzione A) &egrave; settata su "si" si passa a
                                            scegliere l'opzione E). Nel caso in cui l'opzione A) sia settata su "no" il software
                                            legge automaticamente come "no" anche l'opzione E), anche se questa &egrave; lasciata
                                            definita come "si".<br />
                                            ATTENZIONE: la verifica E) &egrave; una verifica d'interesse fuori piano sotto sisma,
                                            NON &egrave; obligatoria!</small>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </li>
    </ul>
</div>
