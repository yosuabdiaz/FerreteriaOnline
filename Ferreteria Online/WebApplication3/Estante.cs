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
    
    public partial class Estante
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Estante()
        {
            this.Producto_x_Estante = new HashSet<Producto_x_Estante>();
        }
    
        public int id_estante { get; set; }
        public int id_pasillo_x_departamento { get; set; }
        public int numero { get; set; }
        public bool activo { get; set; }
    
        public virtual Pasillo_x_Departamento Pasillo_x_Departamento { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Producto_x_Estante> Producto_x_Estante { get; set; }
    }
}
