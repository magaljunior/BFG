<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarPD.aspx.cs" Inherits="Pages_Listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lista de Produtos</title>

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
<body id="body" style="height: 416px">
    <div class="container-fluid">
       <center><div>
            <div>
            <div>
            <form id="form1" runat="server">
                <div style="margin-top: 20px; margin-bottom: 20px;">
                     <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>

					<a class="btn btn-dark" href="../CadCliente/ListarCL.aspx">Cliente</a>

					 <a class="btn btn-dark" href="../Estoque/Estoque_ProdutosPD.aspx">Estoque</a>

					 <a class="btn btn-dark" href="../Despesa/ListarDespesa.aspx">Despesas</a>
				                    
					<a class="btn btn-dark" href="../Metas/Listar.aspx">Metas</a>

					<a class="btn btn-dark" href="../Motivos/Listar_Motivo.aspx">Motivos</a>

                    <a class="btn btn-dark" href="../OS/Listar.aspx">Ordem de Serviço</a>

					<a class="btn btn-dark" href="../Perda/Listar.aspx">Perdas</a>
                     
					 <a class="btn btn-dark"  href="../Usuario/Listar_usuario.aspx">Usuários</a>
					                                             
                     <a class="btn btn-dark" href="../Vendas/Listar.aspx">Vendas</a>            

                      <a class="btn btn-dark" href="../Giro/GiroEstoque.aspx">Calculadora</a>

						<a style="float: right" class="btn btn-dark" href="../Login.aspx">Logoff</a>
                        </div>

                    <h1 style="margin-bottom: 20px;">Lista de Produtos</h1>

                &nbsp;<asp:Label ID="lblMensagem" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" Style="margin-right: 5px" Width="100%" Height="100px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowDataBound="imgProdutos_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="pro_foto" HeaderText="Foto" >
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pro_nome" HeaderText="Nome" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pro_preco" HeaderText="Preço" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pro_quantidadeMinima" HeaderText="Quantidade Minima" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pro_descricao" HeaderText="Descrição" >

                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="pro_ativo" HeaderText="Status">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:TemplateField HeaderText="Desativar">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbDesativar" runat="server" CommandName="Desativar"
                                    CommandArgument='<%# Bind("pro_codigo")%>'>Desativar</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Calcular">
                             <ItemTemplate>     
                                    <asp:ImageButton ID="lblCalcular" runat="server" CommandName="Calcular"
                                        ImageUrl="../../Images/calc.jpg" CommandArgument='<%# Bind("pro_codigo")%>'></asp:ImageButton>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                       </asp:TemplateField>

                        <asp:TemplateField HeaderText="Alterar">
                            <ItemTemplate>
                                <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" 
                                    ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("pro_codigo")%>'></asp:ImageButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Excluir">
                             <ItemTemplate>     
                                    <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                        ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("pro_codigo")%>'></asp:ImageButton>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
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
        </div>
       </div>
           </div>
           </center>
    </div>
</body>
</html>
