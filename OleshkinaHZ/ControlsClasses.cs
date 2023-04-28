using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OleshkinaHZ
{
    public class ControlsClasses
    {
        #region connect
        public static Oleshkina Connect { get; set; } = new Oleshkina();
        #endregion
        public static EnterEmploye EnterEmploye { get; set; } = new EnterEmploye();
        public static ShowVizit ShowVizit { get; set; } = new ShowVizit();
    }
}
