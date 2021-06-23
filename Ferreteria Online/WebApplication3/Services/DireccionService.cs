using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;
using WebApplication3.AccesoDatos;
using Npgsql;

namespace WebApplication3.Services
{
    public class DireccionService
    {
        public List<Direccion> Obtener()
        {
            Conexion conex = new Conexion();
            System.Data.DataTable resultado = new System.Data.DataTable(); // tabla donde se muestra el resultado
            List<Direccion> lista = new List<Direccion>();
            try
            {
                String sql = "SELECT * FROM direccion;";
                NpgsqlDataAdapter datos = new NpgsqlDataAdapter(sql, conex.Conn); //El adapter funciona en SELECT o procedimientos que me devuelvan valores.
                datos.Fill(resultado); //rellenamos la tabla

                //Saqueme todas las filas
                //De la BD, lo cargamos a Memoria para luego cargarlo a la lista
                foreach (System.Data.DataRow item in resultado.Rows)
                {
                    Direccion direccion = new Direccion
                    {
                        id_direccion = (int)item["id_direccion"],
                        ubicacion = (string)item["ubicacion"],
                        activo = (bool)item["activo"],
                        descripcion = (string)item["descripcion"]
                        
                    };
                    lista.Add(direccion); //rellenamos la lista con entidades clientes
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