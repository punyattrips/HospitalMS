using System;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibCls_Code
{
    public class ClsProg1
    {
        MySqlConnection con;
        MySqlCommand cmd;

        public MySqlConnection ConnectSQL()
        {
            con = new MySqlConnection("server=localhost; user id=root; database=hospmang_db; port=3306; password=ptroot");
            return con;
        }
        public void SaveData(string sql)
        {
            cmd = new MySqlCommand(sql, ConnectSQL());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public long MaxID(string hID, string tablen)
        {
            string sql;
            long MaxID = 1;
            sql = "SELECT COUNT(" + hID + ") FROM " + tablen + ";";
            cmd = new MySqlCommand(sql, ConnectSQL());
            con.Open();
            if (DBNull.Value.Equals(cmd.ExecuteScalar()) == false)
            {
                MaxID = Convert.ToInt64(cmd.ExecuteScalar());
                MaxID++;
            }
            con.Close();
            return MaxID;
        }

        public int CheckLogin(string cusname, string cpwd)
        {
            cmd = new MySqlCommand("SELECT hid FROM register_tb WHERE husername = '" + cusname + "' AND hpassword = '" + cpwd + "'", ConnectSQL());
            con.Open();
            int cv = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return cv;
        }
    }
}
