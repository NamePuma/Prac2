using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;

namespace OleshkinaHZ
{
    /// <summary>
    /// Логика взаимодействия для ChangeVizit.xaml
    /// </summary>
    public partial class ChangeVizit : Window
    {
        public bool can { get; set; }
        public Vizit Vizit { get; set; }
        public ChangeVizit(Vizit vizit)
        {
            InitializeComponent();
            Init(vizit, isCan, isNot); 
            Vizit = vizit;
            DataContext = this;

        }
        private void Init(Vizit vizit, RadioButton isCan, RadioButton isNot)
        {
           if(vizit.status == true)
            {
                isCan.IsChecked = true;
                can = true;
            }
            else
            {
                isNot.IsChecked = true;
                can = false;
            }
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            if (can)
            {
                Console.WriteLine($"{Vizit.User.Login} был принят" );
            }
            else
            {
                Console.WriteLine($"{Vizit.User.Login} не был принят");
            }
            ControlsClasses.Connect.SaveChanges();
            Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
