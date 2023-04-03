using Cultery.Base;
using Cultery.Pages;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Cultery
{
    /// <summary>
    /// Interaction logic for RegistrationWindow.xaml
    /// </summary>
    public partial class RegistrationWindow : Window
    {
        private cutleryEntities Database;
        public RegistrationWindow()
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
            RoleComboBox.ItemsSource = Database.Role.ToList();
        }

        private void RegButton_Click(object sender, RoutedEventArgs e)
        {
            var Symbol = new Regex(@"[,.<>`~\|/{})(=_!#$%^&*+]");
            var Number = new Regex(@"[0-9]+");
            var Char = new Regex(@"[A-Z]+");
            var Min = new Regex(@".{8,}");

            if (NameTextBox.Text == "" || LNameTextBox.Text == "" || SNameTextBox.Text == "" || PasswordBox.Text == "" || LoginTextBox.Text == "")
            {
                MessageBox.Show("Error");
            }
            else
            {
                Base.User user = new User();
                user.UserName = NameTextBox.Text;
                user.UserSurname = SNameTextBox.Text;
                user.UserPatronymic = LNameTextBox.Text;
                user.UserLogin = LoginTextBox.Text;
                user.UserPassword = PasswordBox.Text;
                user.UserRole = (int)RoleComboBox.SelectedItem;

                if (Symbol.IsMatch(PasswordBox.Text) && Number.IsMatch(PasswordBox.Text) && Char.IsMatch(PasswordBox.Text) && Min.IsMatch(PasswordBox.Text))
                {
                    Database.User.Add(user);
                    Database.SaveChanges();
                    MessageBox.Show("Create");
                }
                else
                {
                    MessageBox.Show("password");
                }

            }
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            AuthorizationWindow window = new AuthorizationWindow();
            window.Show();
            Close();
        }
    }
}
