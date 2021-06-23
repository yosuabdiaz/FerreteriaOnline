using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;
using WebApplication3.AccesoDatos;
using Npgsql;

namespace WebApplication3.Services
{
    public class MultaService
    {
        public List<Multa> Obtener()
        {
            Conexion conex = new Conexion();
            System.Data.DataTable resultado = new System.Data.DataTable(); // tabla donde se muestra el resultado
            List<Multa> lista = new List<Multa>();
            try
            {
                String sql = "SELECT * FROM multa;";
                NpgsqlDataAdapter datos = new NpgsqlDataAdapter(sql, conex.Conn); //El adapter funciona en SELECT o procedimientos que me devuelvan valores.
                datos.Fill(resultado); //rellenamos la tabla

                //Saqueme todas las filas
                //De la BD, lo cargamos a Memoria para luego cargarlo a la lista
                foreach (System.Data.DataRow item in resultado.Rows)
                {
                    Multa multa = new Multa
                    {
                        id_multa = (int)item["id_multa"],
                        id_entrega = (int)item["id_entrega"],
                        monto = (int)item["monto"],
                        descripcion = (string)item["descripcion"],
                        activo = (bool)item["activo"]

                    };
                    lista.Add(multa); //rellenamos la lista con entidades clientes
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