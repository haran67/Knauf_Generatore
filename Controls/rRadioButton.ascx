﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="rRadioButton.ascx.cs" Inherits="Generatore_Web.Controls.rRadioButton" %>
<div class="form-group" id="div_form" runat="server">
    <label class="control-label col-md-3">
        <asp:Literal ID="ltl_label" runat="server"></asp:Literal></label>
    <div class="col-md-9">
        <div class="radio-list">
            <label class="radio-inline" id="lbl_chk_01" runat="server" visible="false">
                <asp:RadioButton ID="rdb_value_01" runat="server" />
                <asp:Literal ID="ltl_rdb_01" runat="server"></asp:Literal>
            </label>
            <label class="radio-inline" id="lbl_chk_02" runat="server" visible="false">
                <asp:RadioButton ID="rdb_value_02" runat="server" />
                <asp:Literal ID="ltl_rdb_02" runat="server"></asp:Literal>
            </label>
            <label class="radio-inline" id="lbl_chk_03" runat="server" visible="false">
                <asp:RadioButton ID="rdb_value_03" runat="server" />
                <asp:Literal ID="ltl_rdb_03" runat="server"></asp:Literal>
            </label>
        </div>
        <span class="help-block">
            <asp:Literal ID="ltl_help" runat="server"></asp:Literal></span> 
    </div>
</div>
