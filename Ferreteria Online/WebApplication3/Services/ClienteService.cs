using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication3.Models;
using WebApplication3.AccesoDatos;
using Npgsql;

namespace WebApplication3.Services
{
    public class ClienteService
    {
        public List<Cliente> Obtener()
        {
            Conexion conex = new Conexion();
            System.Data.DataTable resultado = new System.Data.DataTable(); // tabla donde se muestra el resultado
            List<Cliente> lista = new List<Cliente>();
            try
            {
                String sql = "SELECT * FROM cliente;";
                NpgsqlDataAdapter datos = new NpgsqlDataAdapter(sql, conex.Conn); //El adapter funciona en SELECT o procedimientos que me devuelvan valores.
                datos.Fill(resultado); //rellenamos la tabla

                //Saqueme todas las filas
                //De la BD, lo cargamos a Memoria para luego cargarlo a la lista
                foreach (System.Data.DataRow item in resultado.Rows)
                {
                    Cliente cliente = new Cliente
                    {
                        id_cliente = (int)item["id_cliente"],
                        nombre = (string)item["nombre"],
                        correo = (string)item["correo"],
                        metodo_pago = (int)item["metodo_pago"],
                        puntuacion = (int)item["puntuacion"],
                        activo = (bool)item["activo"]
                    };
                    lista.Add(cliente); //rellenamos la lista con entidades clientes
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