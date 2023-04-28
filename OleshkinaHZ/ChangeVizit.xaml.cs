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
        public Vizit Vizit { get; set; }
        public ChangeVizit(Vizit vizit, bool blackList = false)
        {
            InitializeComponent();
            Vizit = vizit;
            if (blackList == true)
            {
                isCan.Visibility = Visibility.Hidden;
                Vizit.status = false;
                ControlsClasses.Connect.SaveChanges();

            }
            Init(vizit, isCan, isNot); 
            DataContext = this;

        }
        private void Init(Vizit vizit, RadioButton isCan, RadioButton isNot)
        {
           if(vizit.status == true)
            {
                isCan.IsChecked = true;
            }
            else
            {
                isNot.IsChecked = true;
            }
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            ControlsClasses.Connect.SaveChanges();
            Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
