using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Gal_demo.Logica
{
    public class classConexion
    {
        public string GetConexion()
        {
            return ConfigurationManager.ConnectionStrings["Conex"].ToString();
        }
    }
}
