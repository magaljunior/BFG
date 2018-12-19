<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GiroEstoque.aspx.cs" Inherits="Pages_GiroEstoque" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
	<script src="../../Scripts/bootstrap.min.js"></script>
	<script src="../../Scripts/jquery-3.0.0.min.js"></script>
	<script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
	<script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
	<script src="../../Scripts/jquery.mask.min.js"></script>
	<link href="../../Css/Estilo.css" rel="stylesheet" />

    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }

        #form1 {
            height: 686px;
        }

    </style>

</head>
<body id="body">
        <div class="container-fluid">
            
           <form id="form1" runat="server">
			  
            
            
            <br />
			   <div class="nav-side-menu">
						<i class="fa fa-bars fa-2x toggle-btn"></i>

						<div class="menu-list">

							<ul id="menu-content" class="menu-content collapse out">
								<li>
									<a href="Administrador.aspx"><i class="fa fa-dashboard fa-lg"></i>Página Inicial</a>
								</li>

								<li data-toggle="collapse" data-target="#products" class="collapsed active">
									<a href="#"><i class="fa fa-globe fa-lg"></i>Menu - BFG <span class="arrow"></span></a>
								</li>
								<li data-toggle="collapse" data-target="#products" class="collapsed">
									<a href="Cadastros.aspx"><i class="fa fa-globe fa-lg"></i>Cadastros<span class="arrow"></span></a>
								</li>
								

								<li data-toggle="collapse" data-target="#service" class="collapsed">
									<a href="Consultas.aspx"><i class="fa fa-globe fa-lg"></i>Consultas<span class="arrow"></span></a>
								</li>
								


								<li data-toggle="collapse" data-target="#new" class="collapsed">
									<a href="Relatórios.aspx"><i class="fa fa-car fa-lg"></i>Relatórios <span class="arrow"></span></a>
								</li>
								


								<li>
									<a href="../Giro/GiroEstoque.aspx"><i class="fa fa-car fa-lg"></i>Calculadora <span class="arrow"></span></a>
									
								</li>
								<li>
									<a href="#">
										<i class="fa fa-user fa-lg"></i>
									</a>
								</li>
								<li>
									<a href="../Login.aspx">
										<i class="fa fa-users fa-lg"></i>Logoff
									</a>
								</li>
							</ul>
						</div>
				   </div>
			   <center><h2>Calculadora de Estoque</h2>


            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
            <br />
            
            	   <asp:Label ID="lblProduto" runat="server" Text="Produto:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
				   <asp:DropDownList ID="ddlProduto" runat="server">
					   <asp:ListItem>Selecione</asp:ListItem>
					   <asp:ListItem>Bloco Canaleta</asp:ListItem>
					   <asp:ListItem>Bloco Estrutural</asp:ListItem>
					   <asp:ListItem>Bloco de Vedação</asp:ListItem>
					   <asp:ListItem>Meio Bloco Estrutural</asp:ListItem>
					   <asp:ListItem>Meio Bloco de Vedação</asp:ListItem>
				   </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   <br />
				   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   <br />

            <asp:Label ID="lblEstoqueMax" runat="server" Text="Estoque:" Font-Bold="True"></asp:Label>
          
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
            <asp:TextBox ID="txtEstoqueMaximo" runat="server" OnTextChanged="txtEstoqueMaximo_TextChanged" Width="106px"></asp:TextBox>
         
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="lblVend" runat="server" Text="Vendas:" Font-Bold="True"></asp:Label>
          
            &nbsp;
         
            <asp:TextBox ID="txtVendas" runat="server" OnTextChanged="txtVendas_TextChanged" Width="86px"></asp:TextBox>
         
            <br />
            <br />

            <br />

            <asp:Label ID="lblEstoqueAtual0" runat="server" Text="Estoque Máximo:" Font-Bold="True"></asp:Label>
    
            <asp:TextBox ID="estoqueMaximo" runat="server" OnTextChanged="txtVendas_TextChanged" Width="86px" style="margin-left: 18px"></asp:TextBox>
    
            <asp:Label ID="lblEstoqueAtual" runat="server" Text="Estoque Atual:" Font-Bold="True"></asp:Label>
            <asp:TextBox ID="txtEstoqueAtual" runat="server" OnTextChanged="txtEstoqueAtual_TextChanged" Width="86px"></asp:TextBox>
            <br />
            <br />

            <br />
            
            <asp:Label ID="lblMinnimo" runat="server" Font-Bold="True">Estoque Mínimo:</asp:Label>
           
            <asp:TextBox ID="txtEstoqueMinimo" runat="server" Width="86px"></asp:TextBox>
           
           
            <asp:Label ID="lblMedio" runat="server" Text="Estoque Médio:" Font-Bold="True"></asp:Label>
           
           
            <asp:TextBox ID="txtEstoqueMedio" runat="server" Width="86px"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calcular Giro de Estoque" class="btn btn-dark"/>
            <br />
            <br />
            <br />
            <h3>&nbsp;&nbsp; Calcular Tábuas para Produção</h3>
            <br />
           
            <asp:TextBox ID="txtTabuas" runat="server" Width="93px" Height="27px"></asp:TextBox>
          
            <asp:Button CssClass="btn btn-dark" ID="Button2" runat="server" Text="Calcular Tábuas" OnClick="Button2_Click" />
          
            	   <br />
          
            <asp:Label ID="txtTabuasTotal" runat="server"></asp:Label>

			   </center>
            </form>
    </div>
</body>
</html>
