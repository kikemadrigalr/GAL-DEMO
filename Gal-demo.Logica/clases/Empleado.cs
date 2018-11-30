using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Gal_demo.Logica.clases
{
    public class Empleado
    {
        string Conexion = "";
        SqlCommand Command = null; //permite ejecutar comando sql (query o SP)
        SqlConnection Connection = null; //establece conexion con servidor de BD
        SqlParameter Parameter = null; //permite trabajar con procedimientos almacenados a nivel de parametros
        SqlDataAdapter DataAdapter = null; //permite adaptar un origen de datos a una variable

        public Empleado()
        {
            classConexion obConexion = new classConexion();
            Conexion = obConexion.GetConexion();
        }

        /*----------Metodo Insertar Empleado------------------*/
        public string InsertarEmpleado(string stCedula, string stNombre, string stApellido, string stCorreo)
        {
            try
            {
                Connection = new SqlConnection(Conexion);
                Connection.Open();

                Command = new SqlCommand("spInsertarEmpleado", Connection);
                Command.CommandType = CommandType.StoredProcedure;

                Command.Parameters.Add(new SqlParameter("@cCedula", stCedula));
                Command.Parameters.Add(new SqlParameter("@cNombre", stNombre));
                Command.Parameters.Add(new SqlParameter("@cApellido", stApellido));
                Command.Parameters.Add(new SqlParameter("@cCorreo", stCorreo));

                bool stEstado = true;
                Command.Parameters.Add(new SqlParameter("@cEstado", stEstado));
                // Command.Parameters.Add(new SqlParameter("@cFecha", stFecha));
                // Command.Parameters.Add(new SqlParameter("@cRuta", stRuta));

                Parameter = new SqlParameter();
                Parameter.ParameterName = "@cMensaje";
                Parameter.SqlDbType = SqlDbType.VarChar;
                Parameter.Size = 100;
                Parameter.Direction = ParameterDirection.Output;

                Command.Parameters.Add(Parameter);
                Command.ExecuteNonQuery();

                return Parameter.Value.ToString();
            } //End Try
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                Connection.Close();
            }
        }
        /*----------Metodo Insertar Empleado------------------*/

        /*----------Metodo Consultar Empleado------------------*/
        public DataSet ConsultarEmpleado(string stCedula)
        {
            try
            {
                DataSet dsConsulta = new DataSet();

                Connection = new SqlConnection(Conexion);
                Connection.Open();

                Command = new SqlCommand("spConsultarEmpleado", Connection)
                {
                    CommandType = CommandType.StoredProcedure
                };

                Command.Parameters.Add(new SqlParameter("@cCedula", stCedula));

                Command.ExecuteNonQuery();
                DataAdapter = new SqlDataAdapter(Command);
                DataAdapter.Fill(dsConsulta);

                return (dsConsulta);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                Connection.Close();
            }
        }
        /*----------Metodo Consultar Empleado------------------*/

        /*----------Metodo Modificar Empleado------------------*/
        public string ModificarEmpleado(string stCedula, string stNombre, string stApellido, string stCorreo)
        {
            try
            {
                Connection = new SqlConnection(Conexion);
                Connection.Open();

                Command = new SqlCommand("spUpdateEmpleado", Connection);
                Command.CommandType = CommandType.StoredProcedure;

                Command.Parameters.Add(new SqlParameter("@cCedula", stCedula));
                Command.Parameters.Add(new SqlParameter("@cNombre", stNombre));
                Command.Parameters.Add(new SqlParameter("@cApellido", stApellido));
                Command.Parameters.Add(new SqlParameter("@cCorreo", stCorreo));
               // Command.Parameters.Add(new SqlParameter("@cFecha", stFecha));
               // Command.Parameters.Add(new SqlParameter("@cRuta", stRuta));

              //  Parameter = new SqlParameter();
               // Parameter.ParameterName = "@cMensaje";
               // Parameter.SqlDbType = SqlDbType.VarChar;
              //  Parameter.Size = 100;
               // Parameter.Direction = ParameterDirection.Output;

               // Command.Parameters.Add(Parameter);
                Command.ExecuteNonQuery();

                return Parameter.Value.ToString();
            } //End Try
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                Connection.Close();
            }
        }
        /*----------Metodo Modificar Empleado------------------*/

        /*--------------Listar Empleados--------------*/
        public DataTable ListarEmplados()
        {
            try
            {
                DataTable dtConsulta = new DataTable();
                Connection = new SqlConnection(Conexion);
                Connection.Open();

                Command = new SqlCommand("spListarEmpleados", Connection)
                {
                    CommandType = CommandType.StoredProcedure
                };

                Command.ExecuteNonQuery();
                SqlDataAdapter DataAdapter = new SqlDataAdapter(Command);
                DataAdapter.Fill(dtConsulta);
                return (dtConsulta);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                Connection.Close();
            } 
        }
        /*--------------Listar Empleados--------------*/

        /*--------------Cambiar Estado Empleados (Eliminación Lógica)--------------*/
        public string CambiarEstado(string stCedula)
        {
            try
            {
                Connection = new SqlConnection(Conexion);
                Connection.Open();

                Command = new SqlCommand("spCambiarEstado", Connection);
                Command.CommandType = CommandType.StoredProcedure;

                Command.Parameters.Add(new SqlParameter("@cCedula", stCedula));
               
                Parameter = new SqlParameter();
                Parameter.ParameterName = "@cMensaje";
                Parameter.SqlDbType = SqlDbType.VarChar;
                Parameter.Size = 100;
                Parameter.Direction = ParameterDirection.Output;

                Command.Parameters.Add(Parameter);
                Command.ExecuteNonQuery();

                return Parameter.Value.ToString();
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                Connection.Close();
            }

        }
        /*--------------Cambiar Estado Empleados (Eliminar)--------------*/


    }
}
