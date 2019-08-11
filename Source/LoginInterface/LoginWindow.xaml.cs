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

namespace LoginInterface
{
    public partial class LoginWindow
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        public void ShowError(string error)
        {
            this.errorLabel.Text = error;
        }

        private void LoginClicked(object sender, RoutedEventArgs e)
        {
            this.RequestLogin?.Invoke(this.usernameBox.Text, this.passwordBox.Password);
        }

        private void RegisterClicked(object sender, RoutedEventArgs e)
        {
            this.RequestRegister?.Invoke();
        }

        public event Action<string, string> RequestLogin;
        public event Action RequestRegister;
    }
}
