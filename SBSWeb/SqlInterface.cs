using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;


namespace SBSWeb
{
    public class SqlInterface
    {
        private SqlConnection sq;

        public SqlInterface(SqlConnection connectionString)
        {
            sq = connectionString;
        }

        public void Delete(string command)
        {
            SqlCommand sqlCMD = new SqlCommand(command, sq);
            try
            {
                sq.Open();
            }
            catch { }
            sqlCMD.ExecuteNonQuery();
            sq.Close();
        }

        public void Insert(string fields, string data, string tableName)
        {
            data = HandleSomeInj(data);

            string command = "";
            string[] dataArray = data.Split(',');
            command = "insert into " + tableName + " (" + fields + ") Values(";
            for (int i = 0; i < dataArray.Length - 1; i++)
            {
                command += "'" + dataArray[i].Replace("'", "''") + "',";
            }
            command += "'" + dataArray[dataArray.Length - 1] + "')";
            SqlCommand sqlCMD = new SqlCommand(command, sq);
            try
            {
                sq.Open();
            }
            catch { }
            sqlCMD.ExecuteNonQuery();
            sq.Close();
        }

        public void Update(string fields, string data, string tableName, string whereCondition)
        {
            data = HandleSomeInj(data);
            whereCondition = HandleSomeInj(whereCondition);

            string command = "";
            string[] dataArray = data.Split(',');
            string[] fieldsArray = fields.Split(',');
            command = "update " + tableName + " set ";
            for (int i = 0; i < dataArray.Length - 1; i++)
            {
                command += fieldsArray[i] + "=" + "'" + dataArray[i].Replace("'", "''") + "',";
            }
            command += fieldsArray[fieldsArray.Length - 1] + "='" + dataArray[dataArray.Length - 1] + "' " + whereCondition;
            SqlCommand sqlCMD = new SqlCommand(command, sq);
            try
            {
                sq.Open();
            }
            catch { }
            sqlCMD.ExecuteNonQuery();
            sq.Close();
        }

        public DataTable Select(string query)
        {
            query = HandleSomeInj(query);

            SqlCommand sqlCMD = new SqlCommand(query, sq);
            sqlCMD.CommandTimeout = 300;
            SqlDataAdapter sqlDA = new SqlDataAdapter(sqlCMD);
            DataTable DT = new DataTable();
            try
            {
                sq.Open();
            }
            catch { }
            try
            {
                sqlDA.Fill(DT);
                sq.Close();
            }
            catch
            {
                return DT;
            }
            return DT;
        }



        private string HandleSomeInj(string Input)
        {
            Input = Input.Replace("--", "");
            Input = Input.Replace(";--", "");
            Input = Input.Replace(";", ":");
            Input = Input.Replace("/*", "");
            Input = Input.Replace("*/", "");
            Input = Input.Replace("@@", "");
            Input = Input.Replace("``", "");
            Input = Input.Replace("´", "");
            //Input = Input.Replace("~", "");

            return Input;
        }

    }
}




/// <summary>
/// Summary description for SqlInterface
/// </summary>


