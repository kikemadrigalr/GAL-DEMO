<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="app_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>GAL-DEMO - Proyecto Aprendizaje</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet"/>

    <link href="css/styles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <a class="navbar-brand" href="Default.aspx">GAL-DEMO</a>
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="Default.aspx">Inicio <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="empleado/empleado.aspx">Empleados</a>
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

        <br />

        <h1 class="titulo">Maestros</h1>
        <br />

        <div class="container">
            <div class="card-deck">
                <div class="card ">
                    <img class="card-img-top img_card" src="images/employed.jpg" alt="Card image cap">
                    <div class="card-body ">
                        <h5 class="card-title">Empleados</h5>
                        <p class="card-text"> Gestionar la Información de Empleados</p>
                        <a href="empleado/empleado.aspx" class="btn btn-primary">Listar Empleados</a>
                    </div>
                </div>
                <div class="card ">
                    <img class="card-img-top img_card" src="images/costumers.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Clientes</h5>
                        <p class="card-text">Gestionar la Información de Clientes</p>
                        <a href="#" class="btn btn-primary">Listar Clientes</a>
                    </div>
                </div>
                <div class="card ">
                    <img class="card-img-top img_card" src="images/flat-project.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Proyectos</h5>
                        <p class="card-text">Gestionar la Información de Proyectos</p>
                        <a href="#" class="btn btn-primary">Listar Proyectos</a>
                    </div>
                </div>
            </div>   
            
            </div>
        
    </form>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

</body>
</html>
