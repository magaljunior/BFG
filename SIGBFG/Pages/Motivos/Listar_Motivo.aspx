﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listar_Motivo.aspx.cs" Inherits="Pages_Motivos_Listar_Motivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Lista de Motivos de Perda</title>

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
                    <form id="form1" runat="server">
                    <div style="margin-top: 20px;">

                       <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>

					<a class="btn btn-dark" href="../CadCliente/ListarCL.aspx">Cliente</a>

					 <a class="btn btn-dark" href="../Estoque/Estoque_ProdutosPD.aspx">Estoque</a>

					 <a class="btn btn-dark" href="../Despesa/ListarDespesa.aspx">Despesas</a>
				
                     <a class="btn btn-dark" href="../Metas/Listar.aspx">Metas</a>
                    
					<a class="btn btn-dark" href="../OS/Listar.aspx">Ordem de Serviço</a>

                    <a class="btn btn-dark" href="../Perda/Listar.aspx">Perdas</a>

					<a class="btn btn-dark" href="../Produtos/ListarPD.aspx">Produtos</a>
                     
					 <a class="btn btn-dark"  href="../Usuario/Listar_usuario.aspx">Usuários</a>
					                                             
                     <a class="btn btn-dark" href="../Vendas/Listar.aspx">Vendas</a>            

                      <a class="btn btn-dark" href="../Giro/GiroEstoque.aspx">Calculadora</a>

                      <a style="float: right" class="btn btn-dark" href="../Login.aspx">Logoff</a>

                    </div>
                    <br />
                    <br />
                    <h1>Listar Motivos de Perda</h1>
                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                        <br />
                        <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="100%" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="mot_motivoPerda" HeaderText="Motivo" />
                        <asp:TemplateField HeaderText="Alterar">
                            <ItemTemplate>
                                <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" 
                                    ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("mot_codigo")%>'></asp:ImageButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Excluir">
                             <ItemTemplate>     
                                    <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                        ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("mot_codigo")%>'></asp:ImageButton>
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
                    <br />
                 </form>
           </div></center>
     </div>
</body>
</html>
