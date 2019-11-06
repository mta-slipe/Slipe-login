using Slipe.Shared.Rpc;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text;

namespace RPCs
{
    public class ErrorRpc: BaseRpc
    {
        public string Error { get; set; }

        public ErrorRpc()
        {

        }

        public ErrorRpc(string error)
        {
            this.Error = error;
        }

        public override void Parse(dynamic value)
        {
            this.Error = (string)value.Error;
        }
    }
}
