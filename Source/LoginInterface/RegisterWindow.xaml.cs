using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace LoginInterface
{
    public partial class RegisterWindow
    {
        public RegisterWindow()
        {
            InitializeComponent();
        }

        public void ShowError(string error)
        {
            this.errorLabel.Text = error;
        }

        private void RegisterClicked(object sender, RoutedEventArgs e)
        {
            RequestRegister?.Invoke(this.usernameBox.Text, this.passwordBox.Password, this.passwordConfirmationBox.Password, this.emailBox.Text);
        }

        private void BackClicked(object sender, RoutedEventArgs e)
        {
            RequestLogin?.Invoke();
        }

        public event Action RequestLogin;
        public event Action<string, string, string, string> RequestRegister;
    }
}
