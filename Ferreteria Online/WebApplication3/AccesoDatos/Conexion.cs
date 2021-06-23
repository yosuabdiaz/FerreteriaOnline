using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Npgsql;

namespace WebApplication3.AccesoDatos
{
    public class Conexion
    {
        private static String server = "localhost";
        private static String login = "postgres";
        private static String password = "admin"; //Contraseña que se utiliza para entrar a PgAdmin
        private static String dataBase = "FerreteriaOnline"; //Nombre de la Base de datos
        public NpgsqlConnection Conn { get; set; } = null;                  //Conexion viva
        public static bool ExisteError { get; set; } = false;
        public static string MensajeError { get; set; } = "";
        public Conexion()
        {
            try
            {
                Conn = new NpgsqlConnection("Host =" + server + " ;Username =" + login + ";Password =" + password + ";Database = " + dataBase);
                Conn.Open();
                ExisteError = false;
            }
            catch (Exception error)
            {
                ExisteError = true;
                MensajeError = error.Message;
            }
        }
        public Conexion(string log, string pass)
        {
            password = pass;
            login = log;
            Conexion oConexion = new Conexion();
        }


        public void setPassword(string pass)
        {
            password = pass;
        }

        public void setLogin(string log)
        {
            login = log;
        }

        public bool getError()
        {
            return ExisteError;
        }

    }
}