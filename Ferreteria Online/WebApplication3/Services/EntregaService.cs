using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;
using WebApplication3.AccesoDatos;
using Npgsql;


namespace WebApplication3.Services
{
    public class EntregaService
    {
        public List<Entrega> Obtener()
        {
            Conexion conex = new Conexion();
            System.Data.DataTable resultado = new System.Data.DataTable(); // tabla donde se muestra el resultado
            List<Entrega> lista = new List<Entrega>();
            try
            {
                String sql = "SELECT * FROM entrega_domicilio;";
                NpgsqlDataAdapter datos = new NpgsqlDataAdapter(sql, conex.Conn); //El adapter funciona en SELECT o procedimientos que me devuelvan valores.
                datos.Fill(resultado); //rellenamos la tabla

                //Saqueme todas las filas
                //De la BD, lo cargamos a Memoria para luego cargarlo a la lista
                foreach (System.Data.DataRow item in resultado.Rows)
                {
                    Entrega entrega = new Entrega
                    {
                        id_entrega = (int)item["id_entrega"],
                        id_vehiculo = (int)item["id_vehiculo"],
                        id_ruta = (int)item["id_ruta"],
                        fecha = (DateTime)item["fecha"],
                        distancia = (decimal)item["distancia"],
                        activo = (bool)item["activo"]

                    };
                    lista.Add(entrega); //rellenamos la lista con entidades clientes
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