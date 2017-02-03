<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true"
    CodeBehind="Errore.aspx.cs" Inherits="Generatore_Web.Errore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="error_box">
        <h1>
            GESTIONE ERRORI</h1>
        <table style="border: solid 0px; width: 93%;">
            <tr>
                <td align="left" width="150">
                    <strong>Pagina Errore:</strong>
                </td>
                <td width="450" align="left">
                    <asp:Literal ID="ltlPag" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td align="left" width="150">
                    <strong>Err.Query:</strong>
                </td>
                <td width="450" align="left">
                    <asp:Literal ID="ltlQuery" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td align="left" width="150">
                    <strong>Err.Method:</strong>
                </td>
                <td width="450" align="left">
                    <asp:Literal ID="ltlMethod" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td align="left" width="150">
                    <strong>Err.Description:</strong>
                </td>
                <td width="450" align="left">
                    <asp:Literal ID="ltlDescr" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td align="left" width="150">
                    <strong>Err.StackTrace:</strong>
                </td>
                <td width="450" align="left">
                    <asp:Literal ID="ltlStack" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2">
                    <br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
