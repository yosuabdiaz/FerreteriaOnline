//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication3
{
    using System;
    using System.Collections.Generic;
    
    public partial class Inventario_Ferreteria
    {
        public int id_inventario_ferreteria { get; set; }
        public int id_ferreteria { get; set; }
        public int id_producto { get; set; }
        public int cantidad { get; set; }
        public bool activo { get; set; }
    
        public virtual Ferreteria Ferreteria { get; set; }
        public virtual Producto Producto { get; set; }
    }
}
