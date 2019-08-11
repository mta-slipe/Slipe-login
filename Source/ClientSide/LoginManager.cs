using LoginInterface;
using RPCs;
using Slipe.Client.Gui;
using Slipe.Client.IO;
using Slipe.Client.Rpc;
using Slipe.Shared.Rpc;
using Slipe.Shared.Utilities;
using System;
using System.Collections.Generic;
using System.Text;
using WpfRenderer.Cegui;

namespace ClientSide
{
    public class LoginManager
    {
        private readonly LoginWindow loginWindow;
        private readonly Window loginGuiWindow;

        private readonly RegisterWindow registerWindow;
        private readonly Window registerGuiWindow;

        public LoginManager()
        {
            this.loginWindow = new LoginWindow();
            this.loginGuiWindow = CeguiWpfRenderer.Render(loginWindow);

            this.loginWindow.RequestLogin += RequestLogin;
            this.loginWindow.RequestRegister += RequestRegisterWindow;


            this.registerWindow = new RegisterWindow();
            this.registerGuiWindow = CeguiWpfRenderer.Render(registerWindow);

            this.registerGuiWindow.Visible = false;

            this.registerWindow.RequestLogin += RequestLoginWindow;
            this.registerWindow.RequestRegister += RequestRegister;

            RpcManager.Instance.RegisterRPC<EmptyRpc>("Login.Success", HandleLoginSuccess);
            RpcManager.Instance.RegisterRPC<ErrorRpc>("Login.Error", (rpc) => loginWindow.ShowError(rpc.Error));

            RpcManager.Instance.RegisterRPC<EmptyRpc>("Register.Success", HandleRegisterSuccess);
            RpcManager.Instance.RegisterRPC<ErrorRpc>("Register.Error", (rpc) => registerWindow.ShowError(rpc.Error));

            Cursor.SetVisible(true);
        }

        private void RequestLoginWindow()
        {
            loginGuiWindow.Visible = true;
            registerGuiWindow.Visible = false;
        }

        private void RequestLogin(string username, string password)
        {
            RpcManager.Instance.TriggerRPC("Login.Request", new LoginRpc(username, password));
        }

        private void RequestRegisterWindow()
        {
            loginGuiWindow.Visible = false;
            registerGuiWindow.Visible = true;
        }

        private void RequestRegister(string username, string password, string passwordConfirmation, string email)
        {
            RpcManager.Instance.TriggerRPC("Register.Request", new RegisterRpc(username, password, passwordConfirmation, email));
        }

        private void HandleLoginSuccess(EmptyRpc rpc)
        {
            loginGuiWindow.Visible = false;
            ChatBox.WriteLine("You have logged in.", Color.Green);
            Cursor.SetVisible(false);
        }

        private void HandleRegisterSuccess(EmptyRpc rpc)
        {
            RequestLoginWindow();
            ChatBox.WriteLine("You have sucessfully registered.", Color.Green);
        }

    }
}
