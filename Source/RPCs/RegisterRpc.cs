using Slipe.Shared.Rpc;
using System;
using System.Collections.Generic;
using System.Text;

namespace RPCs
{
    public class RegisterRpc : BaseRpc
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string PasswordConfirmation { get; set; }
        public string Email { get; set; }

        public RegisterRpc()
        {

        }

        public RegisterRpc(string username, string password, string passwordConfirmation, string email)
        {
            this.Username = username;
            this.Password = password;
            this.PasswordConfirmation = passwordConfirmation;
            this.Email = email;
        }

        public override void Parse(dynamic value)
        {
            this.Username = (string)value.Username;
            this.Password = (string)value.Password;
            this.PasswordConfirmation = (string)value.PasswordConfirmation;
            this.Email = (string)value.Email;
        }
    }
}
