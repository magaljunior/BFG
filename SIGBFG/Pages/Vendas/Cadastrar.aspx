<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
 <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
	<script src="../../Scripts/bootstrap.min.js"></script>
	<script src="../../Scripts/jquery-3.0.0.min.js"></script>
	<script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
	<script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
	<script src="../../Scripts/jquery.mask.min.js"></script>
	<link href="../../Css/Estilo.css" rel="stylesheet" />
    <style type="text/css">
   
    <title>Realizar Vendas</title>
    
    <style type="text/css">

    #body {
        width: 100%;
        height: 100%;
        font-weight: bold;
        /*background-image: url(http://localhost:50742/Images/blocos.png)*/
    } 
        #form1 {
            height: 11px;
        }
        </style>

        <!--VALIDAÇÃO-->
    <script type="text/javascript">
        $(document).ready(function () {

            $("#form1").validate({
                rules: {
                    
                    txtCliente: {
                        required: true
                    },
                     txtRua: {
                        required: true
                    },
                      txtBairro: {
                        required: true
                    },
                       txtNumero: {
                           required: true,
                           number: true
                    },
                        txtCnpj: {
                            cnpj: true
                    },
                         txtTelefone: {
                         required: true
                    },
                    txtQuantidade: {
                        required: true,
                        maxlength: 11
                    },
                     txtValor: {
                        required: true
                    },
                    txtData: {
                        required: true,
                        date: true
                    },
                    txtCep: {
                        required: true,
                        postalcodeBR: true
                    }, 
                    txtCpf: {
                        cpf: true
                    },
                    txtProdutoQauntidade: {
                        required: true
                    },
                    txtQuantidadeTotal: {
                        required: true,
                        number: true
                    }
                }
            })

        //MASCARA
            $('#txtValor').mask("000.000.000,00", { reverse: true })
            $('#txtTelefone').mask('(00) 00000-0000');
            $('#txtCnpj').mask('00.000.000/0000-00', { reverse: true });
            $('#txtData').mask('00/00/0000');
            $('#txtCep').mask('00000-000');
            $('#txtCpf').mask('000.000.000-00', {reverse: true});
        })
    </script>
</head>

<body id="body">

        <div class="container-fluid">
        <center>
            <h1><asp:Label ID="lblSaída" runat="server" Text="Venda de Produtos"></asp:Label></h1>
           
            </div></center>
       <div>
            <form id="form1" runat="server">            
				<i class="fa fa-bars fa-2x toggle-btn"></i>

						</div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="nav-side-menu">
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
									</a>
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
                    	<center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Cliente:" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtCliente" runat="server" Width="541px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Rua:" Font-Bold="True"></asp:Label>
&nbsp;<asp:TextBox ID="txtRua" runat="server" Width="277px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Número:" Font-Bold="True"></asp:Label>
				   &nbsp;<asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Bairro:" Font-Bold="True"></asp:Label>
                &nbsp;<asp:TextBox ID="txtBairro" runat="server" Width="258px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="CEP:" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>
                <br />
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="CNPJ:" Font-Bold="True"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtCnpj" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="CPF:" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Telefone:" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Valor R$:" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Data:" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Produto:" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlProdutos" runat="server" Width="263px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Text="Quantidade:" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtQuantidade" runat="server" Width="141px"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button class="btn btn-dark" ID="btnRealizarVenda" runat="server" Text="Realizar Venda" OnClick="btnRealizarVenda_Click" />

                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                <br />
                <br />
				</center>
          </form>
        </div>
    </div>
</body>
</html>
