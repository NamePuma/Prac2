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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace OleshkinaHZ
{
    /// <summary>
    /// Логика взаимодействия для EnterInSistem.xaml
    /// </summary>

    public partial class EnterInSistem : UserControl
    {
        private Oleshkina connect; 
        public EnterInSistem()
        {
            InitializeComponent();
            connect = new Oleshkina();

        }
        private bool checkedData(TextBox code)
        {
            bool hasStringCode = code.Text.Length > 1;
            if (!hasStringCode) { return false; }
            
            foreach(var codeEmploye in connect.Employees)
            {
                if(code.Text == codeEmploye.CodeEmployee)
                {
                    MessageBox.Show("YES");
                    return true;
                }
            }
            MessageBox.Show("NO");
            return false;
            
            
        }
        private void Enter_Click(object sender, RoutedEventArgs e)
        {
            checkedData(Code);
        }
    }
}
