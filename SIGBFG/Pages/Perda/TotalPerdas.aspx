<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TotalPerdas.aspx.cs" Inherits="Pages_Perda_TotalPerdas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>Relatório de Perdas</title>

    <!--LINKS DE ACESSO-->
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

    	.nav-side-menu {
	overflow: auto;
	font-family: verdana;
	font-size: 12px;
	font-weight: 200;
	background-color: #2e353d;
	position: fixed;
	top: 33px;
	width: 275px;
	height: 241%;
	color: #e1ffff;
	left: 14px;
	margin-right: 0px;
}

		.nav-side-menu {
		position: relative;
		width: 100%;
		margin-bottom: 10px;
	}

		.nav-side-menu {
		position: relative;
		width: 100%;
		margin-bottom: 10px;
	}

		.nav-side-menu {
	overflow: auto;
	font-family: verdana;
	font-size: 12px;
	font-weight: 200;
	background-color: #2e353d;
	position: fixed;
	top: 33px;
	width: 275px;
	height: 241%;
	color: #e1ffff;
	left: 14px;
	margin-right: 0px;
}

	.nav-side-menu .toggle-btn {
		display: none;
	}

		.nav-side-menu .toggle-btn {
			display: block;
			cursor: pointer;
			position: absolute;
			right: 10px;
			top: 10px;
			z-index: 10 !important;
			padding: 3px;
			background-color: #ffffff;
			color: #000;
			width: 40px;
			text-align: center;
		}

		.nav-side-menu .toggle-btn {
			display: block;
			cursor: pointer;
			position: absolute;
			right: 10px;
			top: 10px;
			z-index: 10 !important;
			padding: 3px;
			background-color: #ffffff;
			color: #000;
			width: 40px;
			text-align: center;
		}

	.nav-side-menu .toggle-btn {
		display: none;
	}

	.nav-side-menu .menu-list .menu-content {
		display: block;
	}

	.nav-side-menu .menu-list .menu-content {
		display: block;
	}

	.nav-side-menu ul {
		list-style: none;
		padding: 0px;
		margin: 0px;
		line-height: 35px;
		cursor: pointer;

		/*   
    .collapsed{
       .arrow:before{
                 font-family: FontAwesome;
                 content: "\f053";
                 display: inline-block;
                 padding-left:10px;
                 padding-right: 10px;
                 vertical-align: middle;
                 float:right;
            }
     }
*/
	}

		.nav-side-menu ul,
	.nav-side-menu li {
		list-style: none;
		padding: 0px;
		margin: 0px;
		line-height: 35px;
		cursor: pointer;

		/*   
    .collapsed{
       .arrow:before{
                 font-family: FontAwesome;
                 content: "\f053";
                 display: inline-block;
                 padding-left:10px;
                 padding-right: 10px;
                 vertical-align: middle;
                 float:right;
            }
     }
*/
	}

		.nav-side-menu li {
		padding-left: 0px;
		border-left: 3px solid #2e353d;
		border-bottom: 1px solid #23282e;
	}

			.nav-side-menu li {
		list-style: none;
		padding: 0px;
		margin: 0px;
		line-height: 35px;
		cursor: pointer;

		/*   
    .collapsed{
       .arrow:before{
                 font-family: FontAwesome;
                 content: "\f053";
                 display: inline-block;
                 padding-left:10px;
                 padding-right: 10px;
                 vertical-align: middle;
                 float:right;
            }
     }
*/
	}

		.nav-side-menu li {
		padding-left: 0px;
		border-left: 3px solid #2e353d;
		border-bottom: 1px solid #23282e;
	}

			.nav-side-menu li a i {
				padding-left: 10px;
				width: 20px;
				padding-right: 20px;
			}

			.nav-side-menu li a i {
				padding-left: 10px;
				width: 20px;
				padding-right: 20px;
			}

		.nav-side-menu ul .active {
			border-left: 3px solid #d19b3d;
			background-color: #4f5b69;

		}

		.nav-side-menu ul .active,
		.nav-side-menu li .active {
			border-left: 3px solid #d19b3d;
			background-color: #4f5b69;

		}

		</style>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

</head>
<body id="body">

        <div class="container-fluid">
         <div style="margin-top: 20px;">
            <form id="form1" runat="server">
            
               <center><h1>Relatório de Perdas</h1>
            <br />
                <asp:Label ID="Label1" runat="server" Text="Total:"></asp:Label>
&nbsp;<asp:Label ID="txtTotal" runat="server"></asp:Label>
            <br />
            <br /></center>
					<div class="nav-side-menu">
						<i class="fa fa-bars fa-2x toggle-btn"></i>

						<div class="menu-list">

							<ul id="menu-content" class="menu-content collapse out">
								<li>
									<a href="../ADM/Administrador.aspx">
										<i class="fa fa-dashboard fa-lg"></i>Página Inicial
									</a>
								</li>

								<li data-toggle="collapse" data-target="#products" class="collapsed active">
									<a href="#"><i class="fa fa-globe fa-lg"></i>Menu - BFG <span class="arrow"></span></a>
								</li>
								<li data-toggle="collapse" data-target="#products" class="collapsed">
									<a href="../ADM/Cadastros.aspx"><i class="fa fa-globe fa-lg"></i>Cadastros<span class="arrow"></span></a>
									</li>



								<li data-toggle="collapse" data-target="#service" class="collapsed">
									<a href="../ADM/Consultas.aspx"><i class="fa fa-globe fa-lg"></i>Consultas<span class="arrow"></span></a>
								</li>



								<li data-toggle="collapse" data-target="#new" class="collapsed">
									<a href="../ADM/Relatórios.aspx"><i class="fa fa-globe fa-lg"></i>Relatórios <span class="arrow"></span></a>
									<li><a href="../Estoque/Relatorio.aspx">Estoque</a></li>
									<li><a href="../OS/Relatorio.aspx">Ordem de Serviço</a></li>
									<li><a href="../Perda/TotalPerdas.aspx">Total de Perdas</a></li>
									<li><a href="../Vendas/Relatorio.aspx">Vendas</a></li>

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
            <center>
				<asp:GridView ID="GridView1" runat="server" Width="60%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="per_produto" HeaderText="Produto" />
                    <asp:BoundField DataField="per_quantidade" HeaderText="Quantidade" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
				</center>
           </form>
             <br />
                <center><h1>Gráfico de Perdas</h1>
           <div id="chart_div" style="margin-top: 20px; width: 900px; height: 500px;"></div>
        </div></center>
    </div>
</body>
</html>
