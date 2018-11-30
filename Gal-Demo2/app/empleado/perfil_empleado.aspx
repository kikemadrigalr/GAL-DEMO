<%@ Page Language="C#" AutoEventWireup="true" CodeFile="perfil_empleado.aspx.cs" Inherits="app_empleado_perfil_empleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"/>
<link href="../css/styles.css" rel="stylesheet" type="text/css"/>
<link href="../css/perfil.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>

    <title>GAL-DEMO - Perfil Empleado</title>
</head>
<body>
    <form id="form1" runat="server">
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

       
        <div class="row">
            <div class="container">
                <div class="col-lg-12 col-sm-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            Perfil de Empleado
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-g">
                                    <img src="../images/descarga.svg" alt="Foto Empleado" class="img-thumbnail">
                                </div>
                                <div class="col-lg-8">
                                    <h4>Datos del Empleado</h4>

                                                aqui van los datos del empleado
                                   
                                    
                                </div>
                            </div>
                            
                            <br />
                            <div class="row">
                                <a href="#" class="btn btn-primary">Actualizar Datos</a>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
    
    </form>
    <script src="../js/perfil.js" type="text/javascript"></script>
</body>
</html>
