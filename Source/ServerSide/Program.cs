
using Slipe.Server.Elements;
using Slipe.Server.Game;
using Slipe.Server.IO;
using Slipe.Shared.Elements;
using Slipe.Sql;

namespace ServerSide
{
    class Program
    {
        private readonly Database database;
        private readonly LoginManager loginManager;

        static void Main(string[] args)
        {
            new Program();
        }
        
        public Program()
        {
            this.database = new Database(new MySqlConnectionString()
            {
                Hostname = "127.0.0.1",
                Port = 3306,
                DbName = "slipelogin"                
            }, "root", "");

            this.loginManager = new LoginManager(database);
        }
    }
}
