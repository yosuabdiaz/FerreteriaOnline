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
    
    public partial class Detalle_Lista_Deseos
    {
        public int id_detalle { get; set; }
        public int id_lista { get; set; }
        public int id_producto { get; set; }
        public int cantidad { get; set; }
        public bool activo { get; set; }
    
        public virtual Lista_Deseos Lista_Deseos { get; set; }
        public virtual Producto Producto { get; set; }
    }
}
