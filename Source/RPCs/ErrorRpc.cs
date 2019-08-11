using Slipe.Shared.Rpc;
using System;
using System.Collections.Generic;
using System.Text;

namespace RPCs
{
    public class ErrorRpc: IRpc
    {
        public string Error { get; set; }

        public ErrorRpc()
        {

        }

        public ErrorRpc(string error)
        {
            this.Error = error;
        }

        public void Parse(dynamic value)
        {
            this.Error = (string)value.Error;
        }
    }
}
