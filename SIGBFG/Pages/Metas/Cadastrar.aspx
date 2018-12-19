<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Cadastro de Metas</title>

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

</head>

<!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {
                txtMes: {
                    required: true,
                },
                txtMeta: {
                    required: true,
                    number: true
                },
                txtProduto: {
                    required: true
                }
            }
        })


    })
</script>

<body id="body">
    <div class="container-fluid">
             <form id="form1" runat="server">
                    <center><h1>Cadastro de Metas</h1></center>
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
                    <br />
		<center>
                    <asp:Label runat="server" Text="Mês:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlMes" runat="server" Height="30px" Width="142px">
                        <asp:ListItem>Janeiro</asp:ListItem>
                        <asp:ListItem>Fevereiro</asp:ListItem>
                        <asp:ListItem>Março</asp:ListItem>
                        <asp:ListItem>Abril</asp:ListItem>
                        <asp:ListItem>Maio</asp:ListItem>
                        <asp:ListItem>Junho</asp:ListItem>
                        <asp:ListItem>Julho</asp:ListItem>
                        <asp:ListItem>Agosto</asp:ListItem>
                        <asp:ListItem>Setembro</asp:ListItem>
                        <asp:ListItem>Outubro</asp:ListItem>
                        <asp:ListItem>Novembro</asp:ListItem>
                        <asp:ListItem>Dezembro</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp; &nbsp;
            <asp:Label runat="server" Text="Ano:"></asp:Label>
                    <asp:TextBox ID="txtAno" runat="server" Width="71px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Produto:"></asp:Label>
                    <asp:DropDownList ID="ddlProdutos" runat="server" Height="30px" Width="141px">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Quantidade:"></asp:Label>
                    <asp:TextBox ID="txtMeta" runat="server" Width="127px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Descrição:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDescricao" runat="server" Height="56px" Width="246px"></asp:TextBox>
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
