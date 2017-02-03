<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Generatore_Web.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KNAUF - Generatore di Capitolati</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" sizes="57x57" href="images/favicon/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="images/favicon/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="images/favicon/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="images/favicon/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="images/favicon/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" href="images/favicon/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="images/favicon/android-chrome-192x192.png"
        sizes="192x192">
    <link rel="icon" type="image/png" href="images/favicon/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="images/favicon/favicon-16x16.png" sizes="16x16">
    <link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon">
    <link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon">
    <link rel="manifest" href="images/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#2b5797">
    <meta name="msapplication-TileImage" content="images/mstile-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <link href="stylesheets/styles.css" media="screen" rel="stylesheet" type="text/css">
    <!-- <link href="stylesheets/soon.css" media="screen" rel="stylesheet" type="text/css"> -->
    <style type="text/css">
        .clearfix:after
        {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }
        .help-block
        {
            font-size:10px;
            color:Red;
        }
    </style>
</head>
<body class="splash">
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="header-logo" href="#">KNAUF</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                </ul>
            </div>
        </div>
    </nav>
    <div class="container content">
        <div class="overlay">
            <form runat="server" id="form_login" class="form-login">
                <div class="splash-logo">
                    <a href="catalogo-home.html">
                        <h1>
                            KNAUF - Generatore di Capitolati</h1>
                    </a>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="alert alert-danger display-hide" id="div_message" runat="server">
                                <span>
                                    <asp:Literal ID="ltl_message_error" runat="server"></asp:Literal>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <asp:TextBox ID="username" name="username" runat="server" autocomplete="off" placeholder="nome utente"></asp:TextBox>
                            <span for="username" class="help-block" id="span_username" runat="server" visible="false">
                                <asp:Literal ID="ltl_msg_username" runat="server">La username è obbligatoria.</asp:Literal></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <asp:TextBox ID="password" name="password" autocomplete="off" placeholder="password" runat="server" TextMode="Password"></asp:TextBox>
                            <span for="password" class="help-block" id="span_password" runat="server" visible="false">
                                <asp:Literal ID="ltl_msg_password" runat="server">La password è obbligatoria.</asp:Literal></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <asp:LinkButton ID="btnAccedi" runat="server" CssClass="btn btn-primary" OnClick="btnAccedi_Click">
                                <i class="fa fa-lock"></i>&nbsp;Accedi
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </form> 
        </div>
    </div>
    <!-- Bootstrap core JavaScript
        ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="javascripts/bootstrap.js"></script>
    <script src="javascripts/holder.js"></script>
    <script>
        $('.dropdown-toggle').dropdown()
    </script>
</body>
</html>
