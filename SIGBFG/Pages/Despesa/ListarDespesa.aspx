<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarDespesa.aspx.cs" Inherits="Paginas_ListarDespesa" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head runat="server">
    
    <title>Lista de Despesas</title>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
	<script src="../../Scripts/jquery-3.0.0.min.js"></script>
	<script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>
    
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
        <div class="container-fluid">
                <center><div style="margin-top: 20px;">
                    <div style="margin-top: 20px;">

                        <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a> 

						<a class="btn btn-dark" href="../CadCliente/ListarCL.aspx">Cliente</a>
						
						<a class="btn btn-dark" href="../Estoque/Estoque_ProdutosPD.aspx">Estoque</a> 
																	
						<a class="btn btn-dark" href="../Metas/Listar.aspx">Metas</a> 
						
						<a class="btn btn-dark" href="../Motivos/Listar_Motivo.aspx">Motivos</a> 
						
						<a class="btn btn-dark" href="../OS/Listar.aspx">Ordem de Serviço</a> 
						
						<a class="btn btn-dark" href="../Perda/Listar.aspx">Perdas</a> 
						
						<a class="btn btn-dark" href="../Produtos/ListarPD.aspx">Produtos</a> 
						
						<a class="btn btn-dark" href="../Usuario/Listar_usuario.aspx">Usuários</a> 
						
						<a class="btn btn-dark" href="../Vendas/Listar.aspx">Vendas</a> 
						
						<a class="btn btn-dark" href="../Giro/GiroEstoque.aspx">Calculadora</a> 
						
						<a class="btn btn-dark" href="../Login.aspx" style="float: right">Logoff</a></div>

                    <form id="form1" runat="server">

                            <br />
                            <h1>Lista de Despesas</h1>
                            <p>
                                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                            </p>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="margin-right: 5px" Width="100%" Height="100px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowCommand="GridView1_RowCommand1">

                                <Columns>
                                    <asp:BoundField DataField="des_data" HeaderText="Data" />
                                    <asp:BoundField DataField="des_quantidade" HeaderText="Quantidade" />
                                    <asp:BoundField DataField="des_descricao" HeaderText="Descrição" />
                                    <asp:BoundField DataField="des_valor" HeaderText="Valor R$" />

                                    <asp:TemplateField HeaderText="Alterar">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar"
                                                ImageUrl="../../Images/editar.jpg" CommandArgument='<%# Bind("des_codigo")%>'></asp:ImageButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Excluir">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                                ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("des_codigo")%>'></asp:ImageButton>

                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                    </form>
                </div></center>
            </div>
</body>
</html>
