using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

public partial class app_empleado_empleado : System.Web.UI.Page
{
    /*-------------------Metodo para cargar Datos al gridView-------------------------*/
    protected void CargarGrid()
    {
        try
        {
            Gal_demo.Logica.clases.Empleado objEmpleado = new Gal_demo.Logica.clases.Empleado();
            gridDatos.DataSource = objEmpleado.ListarEmplados();
            gridDatos.DataBind();
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message;
        }
    }
    /*-------------------Metodo para cargar Datos al gridView-------------------------*/

    /*----------Metodo Listar Empleados al Cargar la Vista----------*/
    protected void Page_Load(object sender, EventArgs e)
    {
        CargarGrid();
    }
    /*----------Metodo Listar Empleados al Cargar la Vista----------*/

    /*----------Metodo Insertar----------*/
    protected void btnInsertar_Click(object sender, EventArgs e)
    {
        try
        {
            lblMensaje.Text = "";

            Gal_demo.Logica.clases.Empleado objEmpleado = new Gal_demo.Logica.clases.Empleado();

            lblMensaje.Text = objEmpleado.InsertarEmpleado(txtCedula.Text, txtNombre.Text, txtApellido.Text, txtEmail.Text);
            CargarGrid();
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message;
        }
    }
    /*----------Metodo Insertar----------*/

    /*----------Metodo consultar------------*/
    protected void btnConsultar_Click(object sender, EventArgs e)
    {
        try
        {
            lblMensaje.Text = "";

            Gal_demo.Logica.clases.Empleado objEmpleado = new Gal_demo.Logica.clases.Empleado();
            DataSet Consulta = objEmpleado.ConsultarEmpleado(cedula_buscar.Text);

            if (Consulta.Tables[0].Rows.Count == 0)
            {
                gridDatos.DataSource = null;
                lblMensaje.Text = "La cedula Ingresada No se encuentra Registrada";
            }
            else
            {
                gridDatos.DataSource = Consulta;
                gridDatos.DataBind();
            }
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message;
        }
    } /*----------Metodo consultar------------*/

    protected void CancelEditEvent(object sender, GridViewCancelEditEventArgs e)
    {
        gridDatos.EditIndex = -1;
        CargarGrid();
    }

    /*----------Cambiar Estado, Eliminación Logica----------*/
    protected void DeletingEvent(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            lblMensaje.Text = "";

            GridViewRow fila = gridDatos.Rows[e.RowIndex];
            string ced = Convert.ToString(gridDatos.DataKeys[e.RowIndex].Values[0]);
           
            Gal_demo.Logica.clases.Empleado objEmpleadoUp = new Gal_demo.Logica.clases.Empleado();
            lblMensaje.Text = objEmpleadoUp.CambiarEstado(ced);
            CargarGrid();
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message;
        }

    }
    /*----------Cambiar Estdo, Eliminacion Logica----------*/


    protected void EditingEvent(object sender, GridViewEditEventArgs e)
    {
        gridDatos.EditIndex = e.NewEditIndex;
        CargarGrid();
    }

    /*----------Modificar Empleado----------*/
    protected void UpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            lblMensaje.Text = "";
            
            GridViewRow fila = gridDatos.Rows[e.RowIndex];
            
            string ced = Convert.ToString(gridDatos.DataKeys[e.RowIndex].Values[0]);
            
            //string id = (fila.FindControl("LabelId2") as Label).Text;
            string upCed = (fila.FindControl("LabelCedula2") as Label).Text;
            string upNombre = (fila.FindControl("txtNombreUpdate") as TextBox).Text;
            string upApellido = (fila.FindControl("txtApellidoUpdate") as TextBox).Text;
            string upCorreo = (fila.FindControl("txtCorreoUpdate") as TextBox).Text;

            Gal_demo.Logica.clases.Empleado objEmpleadoUp = new Gal_demo.Logica.clases.Empleado();
            lblMensaje.Text = objEmpleadoUp.ModificarEmpleado(ced, upNombre, upApellido, upCorreo);
            gridDatos.EditIndex = -1;
            CargarGrid();        
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message;
        }
    }
    /*----------Modificar Empleado----------*/

    /*-------------Recargar GridView----------------*/
    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        CargarGrid();
    }
    /*-------------Recargar GridView----------------*/
}