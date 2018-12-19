<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Relatórios.aspx.cs" Inherits="Pages_ADM_Relatórios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<title>Sistema Integrado de Gestão BFG</title>

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
			/*background-image: url(http://localhost:50742/Images/blocos.png)*/
		}

		#logoff {
			width: 40px;
			height: 40px;
			float: right;
		}

		.tm-banner-title {
			font-size: 3.2rem;
			letter-spacing: 2px;
		}

		.tm-banner {
			height: 150px;
			padding: 0;
		}

		.tm-banner-inner {
			height: 100%;
			text-align: center;
			display: -webkit-box;
			display: -webkit-flex;
			display: -ms-flexbox;
			display: flex;
			-webkit-box-orient: vertical;
			-webkit-box-direction: normal;
			-webkit-flex-direction: column;
			-ms-flex-direction: column;
			flex-direction: column;
			-webkit-box-align: center;
			-webkit-align-items: center;
			-ms-flex-align: center;
			align-items: center;
			-webkit-box-pack: center;
			-webkit-justify-content: center;
			-ms-flex-pack: center;
			justify-content: center;
		}

		.tm-banner-title {
			color: #000000;
			text-transform: uppercase;
		}

		.auto-style1 {
			width: 186px;
			height: 104px;
		}

		.container-fluid {
			height: 334px;
		}
	</style>

</head>
<body id="body">


	<div class="container-fluid">

		<div style="margin-top: 20px; height: 729px;">
			&nbsp;<div class="tm-banner-inner">
				<h1 class="tm-banner-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<img alt="BFG" class="auto-style1" longdesc="LogoBFG" src="../../Images/BFG.jpg" /></h1>
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIG - BLOCOS FREI GALVÃO</h1>


				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Relatórios</h2>
			</div>
			<div>
				<div>
					<br />
					<div class="nav-side-menu">
						<i class="fa fa-bars fa-2x toggle-btn"></i>

						<div class="menu-list">

							<ul id="menu-content" class="menu-content collapse out">
								<li>
									<a href="Administrador.aspx">
										<i class="fa fa-dashboard fa-lg"></i>Página Inicial
									</a>
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
									<a href="Relatórios.aspx"><i class="fa fa-globe fa-lg"></i>Relatórios <span class="arrow"></span></a>
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
				</div>
			</div>
		</div>
	</div>
</body>
</html>
