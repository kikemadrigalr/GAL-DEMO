<%@ Page Language="C#" AutoEventWireup="true" CodeFile="empleado.aspx.cs" Inherits="app_empleado_empleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"/>
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>

    <title>GAL-DEMO - Empleados</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <a class="navbar-brand" href="../Default.aspx">GAL-DEMO</a>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="../Default.aspx">Inicio <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="empleado.aspx">Empleados</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#">Proyectos</a>
                        </li>
                    </ul>
                </div>
            </nav>
    
    <form id="form1" runat="server">

        <div class="container">

              <h2 class="titulo2">Empleados</h2>

            <div class="row">
                <div class="col-s-12 col-lg-4 agregar">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                        <i class="material-icons">person_add</i> Agregar Empleado
                    </button>
                </div>

                <!--Barra Busqueda-->
                <div class="col-lg-8 buscar">
                    <div class="input-group ">
                        <asp:TextBox ID="cedula_buscar" runat="server" CssClass="form-control" Width="250px" placeholder="Cedula de Empleado"></asp:TextBox>&nbsp;
                        <asp:LinkButton ID="btnConsultar" runat="server" CssClass="btn btn-primary mb-2" Text="Buscar" OnClick="btnConsultar_Click"><i class="material-icons i_buscar">search</i><span>Buscar</span></asp:LinkButton>
                        <asp:LinkButton ID="btnRefresh" runat="server" CssClass="btn btn-primary mb-2" OnClick="btnRefresh_Click" ><i class="material-icons i_buscar">grid_on</i><span>Mostrar</span></asp:LinkButton>
                    </div>
                </div>
                    <!--Barra Busqueda-->   
            </div>
            
            <br />

            
               
            <div class="container">
                <div class="row">                   
                        <!--Alert Informativo-->
                        <div class="alert alert-info col-s-12 col-lg-12" role="alert">
                            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                        </div>
                    <!--Alert Informativo-->
                </div>
            </div>
        
                    <div class="row">
                    <!--GridView-->
                    <div class="col-s-12 col-lg-12 thumbnail">
                        <asp:GridView ID="gridDatos" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered bs-table" EmptyDataText="No Se encontraron Registros" OnRowCancelingEdit="CancelEditEvent" OnRowDeleting="DeletingEvent" OnRowEditing="EditingEvent" OnRowUpdating="UpdatingEvent" DataKeyNames="cedula">
                            <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                            <Columns>                                                  
                                <asp:TemplateField HeaderText="Id">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelId" runat="server" Text='<% # Bind("id") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="LabelId2" runat="server" Text='<% # Bind("id") %>'></asp:Label>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cedula">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelCedula" runat="server" Text='<% # Bind("cedula") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="LabelCedula2" runat="server" Text='<% # Bind("cedula") %>'></asp:Label>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelNombre" runat="server" Text='<% # Bind("nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtNombreUpdate" runat="server" Text='<% # Bind("nombre") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelApellido" runat="server" Text='<% # Bind("apellido") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtApellidoUpdate" runat="server" Text='<% # Bind("apellido") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correo">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelCorreo" runat="server" Text='<% # Bind("correo") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCorreoUpdate" runat="server" Text='<% # Bind("correo") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:CommandField ButtonType="Link" ShowEditButton="True" ShowDeleteButton="True" /> 
                               
                                <%--<asp:BoundField HeaderText="Cedula" DataField="cedula" />
                                <asp:BoundField HeaderText="Id" DataField="id" />
                                <asp:BoundField HeaderText="Nombre" DataField="nombre" />
                                <asp:BoundField HeaderText="Apellido" DataField="apellido" />
                                <asp:BoundField HeaderText="Correo" DataField="correo" />--%>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <!--GridView-->

                </div><!--row-->
            </div><!--container-->
            

         <!-- Modal-->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Agregar Datos del Empleado</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">

                  <div class="form-group row">
                      <asp:Label AssociatedControlID="txtCedula" Text="Cedula" runat="server" CssClass="col-md-2 control-label"></asp:Label>
                      <div class="col-sm-10">
                          <asp:TextBox runat="server" ID="txtCedula" CssClass="form-control" placeholder="12345678" />
                      </div>
                  </div>
        
          <div class="form-group row">
            <asp:Label runat="server" AssociatedControlID="txtNombre" CssClass="col-md-2 control-label" Text="Nombre"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
            </div>
          </div>

          <div class="form-group row">
            <asp:Label runat="server" AssociatedControlID="txtApellido" CssClass="col-md-2 control-label" Text="Apellido"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox runat="server" ID="txtApellido" CssClass="form-control" />
            </div>
          </div>

           <div class="form-group row">
            <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-sm-10">
              <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" required="required" placeholder="alguien@email.com"/>
            </div>
          </div>

          <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnInsertar" runat="server" Text="Enviar" CssClass="btn btn-primary mb-2" OnClick="btnInsertar_Click"/>
            </div>
          </div>

              </div>
            </div>
          </div>
        </div>
        <!-- fin modal-->
    </form>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

</body>
</html>
