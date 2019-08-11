using RPCs;
using Slipe.Server.Peds;
using Slipe.Server.Rpc;
using Slipe.Shared.Cryptography;
using Slipe.Shared.Rpc;
using Slipe.Sql;
using System;
using System.Collections.Generic;
using System.Text;

namespace ServerSide
{
    public class LoginManager
    {
        private readonly Database database;

        public LoginManager(Database database)
        {
            this.database = database;

            RpcManager.Instance.RegisterRPC<LoginRpc>("Login.Request", HandleLogin);
            RpcManager.Instance.RegisterRPC<RegisterRpc>("Register.Request", HandleRegister);
        }

        private async void HandleLogin(Player source, LoginRpc rpc)
        {
            var result = await database.Query("SELECT * FROM `users` WHERE username = ?", rpc.Username);

            if (result.Length == 0)
            {
                RpcManager.Instance.TriggerRPC(source, "Login.Error", new ErrorRpc("These credentials do not match our records."));
                return;
            }
            var userData = result[0];

            string passwordHash = userData["password"];
            if (! await Bcrypt.Verify(rpc.Password, passwordHash))
            {
                RpcManager.Instance.TriggerRPC(source, "Login.Error", new ErrorRpc("These credentials do not match our records."));
                return;
            }

            RpcManager.Instance.TriggerRPC(source, "Login.Success", new EmptyRpc());
        }

        private async void HandleRegister(Player source, RegisterRpc rpc)
        {
            if (rpc.Password != rpc.PasswordConfirmation)
            {
                RpcManager.Instance.TriggerRPC(source, "Register.Error", new ErrorRpc("These passwords are not the same."));
                return;
            }

            if (string.IsNullOrEmpty(rpc.Username) || string.IsNullOrEmpty(rpc.Password) || string.IsNullOrEmpty(rpc.Email))
            {
                RpcManager.Instance.TriggerRPC(source, "Register.Error", new ErrorRpc("Please fill in the entire form."));
                return;
            }

            if (!(rpc.Email.Contains("@") && rpc.Email.Contains(".")))
            {
                RpcManager.Instance.TriggerRPC(source, "Register.Error", new ErrorRpc("Please fill in a valid email."));
                return;
            }

            if ((await database.Query("SELECT id FROM `users` WHERE email = ?", rpc.Email)).Length > 0)
            {
                RpcManager.Instance.TriggerRPC(source, "Register.Error", new ErrorRpc("This email address is already in use."));
                return;
            }

            if ((await database.Query("SELECT id FROM `users` WHERE username = ?", rpc.Username)).Length > 0)
            {
                RpcManager.Instance.TriggerRPC(source, "Register.Error", new ErrorRpc("This username address is already in use."));
                return;
            }

            string hash = await Bcrypt.Hash(rpc.Password);
            database.Exec("INSERT INTO `users` (`username`, `email`, `password`) VALUES (?, ?, ?)", rpc.Username, rpc.Email, hash);

            RpcManager.Instance.TriggerRPC(source, "Register.Success", new EmptyRpc());
        }
    }
}
