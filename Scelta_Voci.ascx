<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Scelta_Voci.ascx.cs"
    Inherits="Generatore_Web.SceltaVoci" %>

<div class="feature-container" style="margin-left:0px!Important">
    <div class="feature">
        <asp:Repeater ID="rpt_voci" runat="server" OnItemCommand="rpt_voci_ItemCommand" OnItemDataBound="rpt_voci_ItemDataBound">
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
                            <br />
                            <br />
                            <asp:TextBox ID="txt_quantita" runat="server" type="number" min="1" max="50" step="1"
                                value="1"></asp:TextBox>
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
</div>