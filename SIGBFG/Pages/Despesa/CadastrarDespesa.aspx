<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastrarDespesa.aspx.cs" Inherits="Paginas_CadastrarDespesa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<title>Cadastro de Despesas</title>

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
	</style>

	<script type="text/javascript">
		$(document).ready(function () {

			$("#form1").validate({
				rules: {
					txtData: {
						required: true,
						date: true

					},
					txtQuantidade: {
						required: true,
						number: true
					},
					txtDescricao: {
						required: true

					},
					txtValor: {
						required: true
					}
				}
			})

			//MASCARA

			$('#txtData').mask("00/00/0000", { reverse: true })
			$('#txtValor').mask("000.000.000,00", { reverse: true })

		})
	</script>

</head>

<body id="body">
	<div class="container-fluid">
					<div class="nav-side-menu">
						<i class="fa fa-bars fa-2x toggle-btn"></i>

						<div class="menu-list">

							<ul id="menu-content0" class="menu-content collapse out">
								<li>
									<a href="../ADM/Administrador.aspx"><i class="fa fa-dashboard fa-lg"></i>Página Inicial</a>
								</li>

								<li data-toggle="collapse" data-target="#products" class="collapsed active">
									<a href="#"><i class="fa fa-globe fa-lg"></i>Menu - BFG <span class="arrow"></span></a>
								</li>
								<ul class="sub-menu collapse" id="products" aria-pressed="true">
									<li><a href="#">Cadastros</a></li>
									<li><a href="../CadCliente/CadastraCL.aspx">Cliente</a></li>
									<li><a href="../Despesa/CadastrarDespesa.aspx">Despesa</a></li>
									<li><a href="../Metas/Cadastrar.aspx">Metas</a></li>
									<li><a href="../Motivos/Cadastrar_Motivo.aspx">Motivos</a></li>
									<li><a href="../OS/Cadastrar.aspx">Ordem de Serviço</a></li>
									<li><a href="../Perda/Cadastrar.aspx">Perda</a></li>
									<li><a href="../Produtos/CadastrarPD.aspx">Produtos</a></li>
									<li><a href="../Usuario/Cadastrar_Usuario.aspx">Usuario</a></li>
									<li><a href="../Vendas/Cadastrar.aspx">Vendas</a></li>
								</ul>


								<li data-toggle="collapse" data-target="#service" class="collapsed">
									<a href="../ADM/Consultas.aspx"><i class="fa fa-globe fa-lg"></i>Consultas<span class="arrow"></span></a>
								</li>
								<li data-toggle="collapse" data-target="#new" class="collapsed">
									<a href="../ADM/Relatórios.aspx"><i class="fa fa-car fa-lg"></i>Relatórios <span class="arrow"></span></a>
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
		<div style="margin-top: 20px;">
                    <form id="form1" runat="server">
						<center> 
							<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Cadastro de Despesas</h1></center>
                   		
					<i class="fa fa-bars fa-2x toggle-btn"></i>

						<div class="menu-list">

							</div>
						</div>
                    <br />
		<center>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label runat="server" Text="Data:"></asp:Label>
                    <asp:TextBox ID="txtData" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" Text="Quantidade:"></asp:Label>
                    <asp:TextBox ID="txtQuantidade" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Descrição:"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtDescricao" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Valor R$:"></asp:Label>
                    <asp:TextBox ID="txtValor" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                    <br />
                    <br />

                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>

            </form>

        </div></center>
	</div>

</body>

</html>

