//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OleshkinaHZ
{
    using System;
    using System.Collections.Generic;
    
    public partial class Vizit
    {
        public int id { get; set; }
        public string login { get; set; }
        public int appointment { get; set; }
        public Nullable<int> group { get; set; }
        public bool status { get; set; }
    
        public virtual Appointment Appointment1 { get; set; }
        public virtual Group Group1 { get; set; }
        public virtual User User { get; set; }
    }
}