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
        private void filter(ListView showVizit,ComboBox hasGroup, TextBox appoiment, RadioButton allStatus, RadioButton hasStatus, RadioButton noStatus)
        {
            string appoimentText = appoiment.Text.Trim();
            var viewVizit = CollectionViewSource.GetDefaultView(showVizit.ItemsSource);
            if(viewVizit == null) { return; }
            viewVizit.Filter = new Predicate<object>(o =>
            {
                Vizit listVizit = o as Vizit;
                if (showVizit == null) { return false; }

                bool isValue = true;

                if (appoimentText.Length >= 0)
                {
                    isValue = listVizit.Appointment1.Employee.Department1.department1.IndexOf(appoimentText) > -1;
                }



                if(hasStatus.IsChecked == true)
                {
                    if(listVizit.status == false)
                    {
                        isValue = false;
                    }
                }
                if(allStatus.IsChecked == true) 
                {
                    
                }
                if(noStatus.IsChecked == true)
                {
                    if(listVizit.status == true)
                    {
                        isValue = false;
                    }
                }



                if(hasGroup.SelectedIndex == 0)
                {
                    if(listVizit.Group1 != null)
                    {
                        isValue = false;
                    }
                }
                else if (hasGroup.SelectedIndex == 1)
                {
                    if (listVizit.Group1 == null)
                        {
                            isValue = false;
                        }
                }
                else if(hasGroup.SelectedIndex == 2)
                {
                    
                }
                return isValue;
            }
            );

            
        }

        private void Appoiments_TextChanged(object sender, TextChangedEventArgs e)
        {
            filter(ListVizit, HasGroup, Appoiments, Defoult, HasStatus, NoStatus);
        }

        private void HasSataus_Checked(object sender, RoutedEventArgs e)
        {
            filter(ListVizit, HasGroup, Appoiments, Defoult, HasStatus, NoStatus);
        }

        private void HasSataus_Unchecked(object sender, RoutedEventArgs e)
        {
            filter(ListVizit, HasGroup, Appoiments, Defoult, HasStatus, NoStatus);
        }

        private void HasGroup_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            filter(ListVizit, HasGroup, Appoiments, Defoult, HasStatus, NoStatus);
        }

        private void Change_Vizit(object sender, RoutedEventArgs e)
        {
            if (checkSelection(ListVizit) == false)
            {
                MessageBox.Show("Выберете заявку");
                return;
            }
            newWindow(ListVizit);
        }
        private bool checkSelection(ListView listView)
        {
            if(listView.SelectedItem != null) 
            {
                return true;
            }
            return false;
        }
        private void newWindow(ListView listView)
        {
            var correntVizit = listView.SelectedItem as Vizit;
            if(correntVizit.User.BlackList == false)
            {
                ChangeVizit vizit = new ChangeVizit(correntVizit);
                vizit.ShowDialog();
            }
            else
            {
                ChangeVizit vizit = new ChangeVizit(correntVizit, true);
                vizit.ShowDialog();
            }
            ShowVizits = new ObservableCollection<Vizit>(ControlsClasses.Connect.Vizits.ToList());
            listView.ItemsSource = ShowVizits;
        }
    }
}
