using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;
using WebApplication3.AccesoDatos;
using Npgsql;


namespace WebApplication3.Services
{
    public class VehiculoService
    {
        public List<Vehiculo> Obtener()
        {
            Conexion conex = new Conexion();
            System.Data.DataTable resultado = new System.Data.DataTable(); // tabla donde se muestra el resultado
            List<Vehiculo> lista = new List<Vehiculo>();
            try
            {
                String sql = "SELECT * FROM vehiculo;";
                NpgsqlDataAdapter datos = new NpgsqlDataAdapter(sql, conex.Conn); //El adapter funciona en SELECT o procedimientos que me devuelvan valores.
                datos.Fill(resultado); //rellenamos la tabla

                //Saqueme todas las filas
                //De la BD, lo cargamos a Memoria para luego cargarlo a la lista
                foreach (System.Data.DataRow item in resultado.Rows)
                {
                    Vehiculo vehiculo = new Vehiculo
                    {
                        id_vehiculo = (int)item["id_vehiculo"],
                        id_chofer = (int)item["id_chofer"],
                        id_flotilla = (int)item["id_flotilla"],
                        placa = (int)item["placa"],
                        descripcion = (string)item["descripcion"],
                        km_l = (decimal)item["km_l"],
                        activo = (bool)item["activo"],

                    };
                    lista.Add(vehiculo); //rellenamos la lista con entidades clientes
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