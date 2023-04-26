using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace OleshkinaHZ
{
    /// <summary>
    /// Логика взаимодействия для ShowVizit.xaml
    /// </summary>
    public partial class ShowVizit : Page
    {
        public ObservableCollection<Vizit> ShowVizits { get; set; } = new ObservableCollection<Vizit>(ControlsClasses.Connect.Vizits.ToList());
        public ShowVizit()
        {
            InitializeComponent();
            DataContext = this;
        }
        private void filter(ListView showVizit,CheckBox hasGroup, TextBox appoiment, CheckBox hasStatus)
        {
            string appoimentText = appoiment.Text.Trim();
            var viewVizit = CollectionViewSource.GetDefaultView(showVizit);
            if(viewVizit == null) { return; }
            //viewVizit.Filter = new Predicate<object>(o =>
            //{
            //    Vizit listVizit = o as Vizit;
            //    if(showVizit == null) { return false; }

            //    bool isValue = true;

            //    if (appoimentText.Length >= 0)
            //    {
            //        isValue = listVizit.Appointment1.code.IndexOf(appoimentText) > -1 
            //    }
            //}
            //);
        }
    }
}
