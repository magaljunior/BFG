<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Relatorio.aspx.cs" Inherits="Paginas_Relatorio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
	<script src="../../Scripts/bootstrap.min.js"></script>
	<script src="../../Scripts/jquery-3.0.0.min.js"></script>
	<script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
	<script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
	<script src="../../Scripts/jquery.mask.min.js"></script>
	<link href="../../Css/Estilo.css" rel="stylesheet" />

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <title>Relatório de Produção</title>
    
    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }
    </style>
</head>
<body id="body">
    <form id="form1" runat="server">
      <div class="container-fluid">
          
                    
            <center><h1>Relatório de Produção</h1>
                
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
                
                <br />
                
            <asp:GridView ID="GridView1" runat="server"  Width="60%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
              <asp:BoundField DataField="os_funcionario" HeaderText="Funcionário" />
             <asp:BoundField DataField="os_produto" HeaderText="Produto" />
             <asp:BoundField DataField="os_quantidade" HeaderText="Quantidade" />
              <asp:BoundField DataField="os_dataInicio" HeaderText="Data de Inicio" />
              <asp:BoundField DataField="os_dataExpiracao" HeaderText="Data de Expiração" />
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
                <br />
                <br />
                <h1>Gráfico de Produtividade</h1>
                <div id="chart_div" style="margin-top: 20px; width: 900px; height: 500px;"></div>
                    <br />
                <br />
            </center>
        </div>
    </form>

</body>
</html>
