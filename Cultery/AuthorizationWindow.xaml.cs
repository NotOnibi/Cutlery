using Cultery.Base;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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

namespace Cultery.Pages
{
    /// <summary>
    /// Interaction logic for AuthorizationWindow.xaml
    /// </summary>
    public partial class AuthorizationWindow : Window
    {
        private cutleryEntities Database;
        public AuthorizationWindow()
        {
            InitializeComponent();
            CaptchaSpawn();
            try
            {
                Database = new cutleryEntities();
            }
            catch
            {
                MessageBox.Show("lol");
            };
            CaptchaTextBox.IsEnabled = false;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            User user = Database.User.SingleOrDefault(u => u.UserPassword == PasswordBox.Text && u.UserLogin == LoginTextBox.Text);
            if (user != null)
            {
                if (CaptchaTextBox.Text == textBox1.Text)
                {
                    MessageBox.Show("Victory");
                }
                else
                {
                    MessageBox.Show("Ошибка капчи");
                }

            }
            else
            {
                MessageBox.Show("Defeat");
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            CaptchaSpawn();
        }
        private void CaptchaSpawn()
        {
            String allowchar = " ";
            allowchar = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z";
            allowchar += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,y,z";
            allowchar += "1,2,3,4,5,6,7,8,9,0";
            //разделитель
            char[] a = { ',' };
            //расщепление массива по разделителю
            String[] ar = allowchar.Split(a);
            String pwd = "";
            string temp = " ";
            Random r = new Random();
            for (int i = 0; i < 6; i++)
            {
                temp = ar[(r.Next(0, ar.Length))];
                pwd += temp;
            }
            textBox1.Text = pwd;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            RegistrationWindow window = new RegistrationWindow();
            window.Show();
            Close();
        }
    }
}
