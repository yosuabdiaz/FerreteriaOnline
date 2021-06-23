using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;
using WebApplication3.AccesoDatos;
using Npgsql;

namespace WebApplication3.Services
{
    public class RutaService
    {
        public List<Ruta> Obtener()
        {
            Conexion conex = new Conexion();
            System.Data.DataTable resultado = new System.Data.DataTable(); // tabla donde se muestra el resultado
            List<Ruta> lista = new List<Ruta>();
            try
            {
                String sql = "SELECT * FROM ruta;";
                NpgsqlDataAdapter datos = new NpgsqlDataAdapter(sql, conex.Conn); //El adapter funciona en SELECT o procedimientos que me devuelvan valores.
                datos.Fill(resultado); //rellenamos la tabla

                //Saqueme todas las filas
                //De la BD, lo cargamos a Memoria para luego cargarlo a la lista
                foreach (System.Data.DataRow item in resultado.Rows)
                {
                    Ruta ruta = new Ruta
                    {
                        id_ruta = (int)item["id_ruta"],
                        descripcion = (string)item["descripcion"],
                        activo = (bool)item["activo"]
                    };
                    lista.Add(ruta); //rellenamos la lista con entidades clientes
                }
                conex.Conn.Close(); //cerramos la conexion
            }
            catch (NpgsqlException e)
            {

            }
            return lista;
        }
    }
}