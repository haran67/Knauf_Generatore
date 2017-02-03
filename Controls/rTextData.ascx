<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="rTextData.ascx.cs" Inherits="Generatore_Web.Controls.rTextData" %>
<%@ Register TagPrefix="cc" Namespace="Generatore_Classi.Controls" Assembly="Generatore_Classi" %> 

<div class="form-group" id="div_form" runat="server" style="margin-bottom:0px!Important">
    <label class="control-label col-md-2" style="white-space:nowrap;" id="label_control" runat="server">
        <asp:Literal ID="ltl_label" runat="server"></asp:Literal></label>
    <div class="col-md-10" id="div_col" runat="server">
        <div class="" id="div_icon" runat="server">
            <span class="input-group-addon" id="span_icon" runat="server" visible="false"><i class="" id="i_icon"
                runat="server"></i></span>
            <cc:TextData ID="txt_value" runat="server" CssClass="form-control date-picker" placeholder="" OnTextChanged="txt_value_TextChanged"></cc:TextData>
        </div>
        <span class="help-block">
            <asp:Literal ID="ltl_help" runat="server"></asp:Literal></span>
    </div>
</div>

