using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
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
    /// Логика взаимодействия для EnterEmploye.xaml
    /// </summary>
    public partial class EnterEmploye : Page
    {
        public EnterEmploye()
        {
            InitializeComponent();
        }
        private bool checkedData(TextBox code)
        {
            bool hasStringCode = code.Text.Length > 1;
            if (!hasStringCode) { return false; }

            foreach (var codeEmploye in ControlsClasses.Connect.Employees)
            {
                if (code.Text == codeEmploye.CodeEmployee)
                {
                    return true;
                }
            }
            MessageBox.Show("NO");
            return false;
        }
        private void GoPage(Page goOnPage)
        {
            NavigationService.Navigate(goOnPage);
        }

        private void Enter_Click(object sender, RoutedEventArgs e)
        {
            bool can = checkedData(Code);
            if(can)
            {
                GoPage(ControlsClasses.ShowVizit);
            }
        }
    }
}
