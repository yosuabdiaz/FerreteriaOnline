using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;
using WebApplication3.AccesoDatos;
using Npgsql;

namespace WebApplication3.Services
{
    public class DetalleEntregaService
    {
        public List<DetalleEntrega> Obtener()
        {
            Conexion conex = new Conexion();
            System.Data.DataTable resultado = new System.Data.DataTable(); // tabla donde se muestra el resultado
            List<DetalleEntrega> lista = new List<DetalleEntrega>();
            try
            {
                String sql = "SELECT * FROM detalle_entrega;";
                NpgsqlDataAdapter datos = new NpgsqlDataAdapter(sql, conex.Conn); //El adapter funciona en SELECT o procedimientos que me devuelvan valores.
                datos.Fill(resultado); //rellenamos la tabla

                //Saqueme todas las filas
                //De la BD, lo cargamos a Memoria para luego cargarlo a la lista
                foreach (System.Data.DataRow item in resultado.Rows)
                {
                    DetalleEntrega detalleentrega = new DetalleEntrega
                    {
                        id_detalle = (int)item["id_detalle"],
                        id_entrega = (int)item["id_entrega"],
                        id_venta = (int)item["id_venta"],
                        recibido = (bool)item["recibido"],
                        activo = (bool)item["activo"]
                    };
                    lista.Add(detalleentrega); //rellenamos la lista con entidades clientes
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