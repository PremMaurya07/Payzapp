using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using e_PayZapp.Repository.Data.Model;

namespace e_PayZapp.Repository.Data.DataRepository
{
    public static class ePayZappUsers
    {

        #region e-PayZapp Add New User
        public static int AddEpayZappUser(this AcceesByPremMaurya extension, ePayZappUser EpayZappNewUser)
        {
            int d = 0;
            using (SqlConnection cnn = e_PayZapp.connection.ePayZappConnection.SetConnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EpayZappAddNewuser";

                cmd.Parameters.Add(new SqlParameter("@FName", EpayZappNewUser.FName));
                cmd.Parameters.Add(new SqlParameter("@Mobile", EpayZappNewUser.Mobile));
                cmd.Parameters.Add(new SqlParameter("@Password", PasswordEncryption.ComputeHash(EpayZappNewUser.Password, "SHA512", null)));
                cmd.Parameters.Add(new SqlParameter("@EmailAddress", EpayZappNewUser.EmailAddress));

                cmd.Connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    d = (int)reader["i"];
                }
                cmd.Connection.Close();


            }
            return d;
        }
        #endregion

    }
}
