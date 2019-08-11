using Slipe.Shared.Rpc;
using System;
using System.Collections.Generic;
using System.Text;

namespace RPCs
{
    public class LoginRpc : IRpc
    {
        public string Username { get; set; }
        public string Password { get; set; }

        public LoginRpc()
        {

        }

        public LoginRpc(string username, string password)
        {
            this.Username = username;
            this.Password = password;
        }

        public void Parse(dynamic value)
        {
            this.Username = (string)value.Username;
            this.Password = (string)value.Password;
        }
    }
}
