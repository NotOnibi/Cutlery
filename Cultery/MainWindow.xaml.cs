using Cultery.Base;
using Cultery.Pages;
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

namespace Cultery
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private cutleryEntities Database;
        public MainWindow()
        {
            InitializeComponent();

            try
            {
                Database = new cutleryEntities();
            }
            catch
            {
                MessageBox.Show("lol");
            };
            ProductList.ItemsSource = Database.Product.ToList();
            ColumnChange.Width = new GridLength(0);
            ProductCategoryComboBox.ItemsSource = Database.Product.ToList();
            ProductManufacturerComboBox.ItemsSource = Database.Product.ToList();
            ProductProviderComboBoxxxx.ItemsSource = Database.Product.ToList();
            UnitsComboBox.ItemsSource = Database.Product.ToList();

        }

        private void ProductList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            AuthorizationWindow window = new AuthorizationWindow();
            window.Show();
            Close();
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ChangeButton_Click(object sender, RoutedEventArgs e)
        {
            ColumnChange.Width = new GridLength(300);
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
